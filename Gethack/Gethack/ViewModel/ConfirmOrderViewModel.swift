//
//  PaymentViewModel.swift
//  Gethack
//
//  Created by Andressa Valengo on 10/10/20.
//
import Foundation
import Combine

struct CardViewModel {
    var cardNumber: String  = ""
    var validity: String = ""
    var securityCode: String = ""
    var cardholderName: String = ""
}

enum ConfirmOrderState {
    case idle
    case loading
    case success
}

class ConfirmOrderViewModel: ObservableObject {
    
    @Published var card: CardViewModel = CardViewModel()
    
    @Published var state: ConfirmOrderState = .idle
    
    private let makeCreditCardPaymentUseCase: MakeCreditCardPayment
    
    private var cancellable: AnyCancellable?
    
    init(useCase: MakeCreditCardPayment = MakeCreditCardPayment()) {
        self.makeCreditCardPaymentUseCase = useCase
    }
    
    func payWithCreditCard() {
        self.state = .loading
        cancellable = self.makeCreditCardPaymentUseCase.perform(withCard: map(cardViewModel: card)).receive(on: DispatchQueue.main)
            .sink(receiveCompletion: {completion in
            switch completion {
            case .finished:
                self.state = .success
            case .failure(let error):
                print(error)
            }
        }, receiveValue: {_ in })
    }
    
    func map(cardViewModel vm: CardViewModel) -> Card {
        let splitValidity = vm.validity.split(separator: "/")
        
        // refactor not to force unwrap
        let expirationMonth = String(splitValidity.first!)
        let expirationYear = String(splitValidity.last!.suffix(2))
        
        return Card(cardNumber: vm.cardNumber, expirationMonth: expirationMonth, expirationYear: expirationYear, securityCode: vm.securityCode, cardholderName: vm.cardholderName)
    }
    
    deinit {
        cancellable?.cancel()
    }
}
