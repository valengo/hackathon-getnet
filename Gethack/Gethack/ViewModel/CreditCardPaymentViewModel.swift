//
//  PaymentViewModel.swift
//  Gethack
//
//  Created by Andressa Valengo on 10/10/20.
//

import Combine

class CreditCardPaymentViewModel: ObservableObject {
    
    private let makeCreditCardPaymentUseCase: MakeCreditCardPayment
    
    init(useCase: MakeCreditCardPayment = MakeCreditCardPayment()) {
        self.makeCreditCardPaymentUseCase = useCase
    }
    
}
