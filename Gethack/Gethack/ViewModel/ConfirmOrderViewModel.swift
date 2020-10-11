//
//  PaymentViewModel.swift
//  Gethack
//
//  Created by Andressa Valengo on 10/10/20.
//

import Combine

struct CardViewModel {
    var cardNumber: String  = ""
    var validity: String = ""
    var securityCode: String = ""
    var cardholderName: String = ""
}

class ConfirmOrderViewModel: ObservableObject {
    
    @Published var card: CardViewModel = CardViewModel()
    
    private let makeCreditCardPaymentUseCase: MakeCreditCardPayment
    
    private var cancellable: AnyCancellable?
    
    init(useCase: MakeCreditCardPayment = MakeCreditCardPayment()) {
        self.makeCreditCardPaymentUseCase = useCase
    }
    
    func payWithCreditCard() {
        cancellable = self.makeCreditCardPaymentUseCase.perform(withCard: map(cardViewModel: card)).sink(receiveCompletion: {completion in
            switch completion {
            case .finished:
                print("Sucesso")
            case .failure(let error):
                print(error)
            }
        }, receiveValue: {value in print(value)})
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
