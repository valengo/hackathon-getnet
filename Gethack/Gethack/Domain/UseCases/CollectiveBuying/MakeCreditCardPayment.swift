//
//  Pay.swift
//  Gethack
//
//  Created by Andressa Valengo on 10/10/20.
//

import Combine

class MakeCreditCardPayment {
    
    let paymentService: PaymentServiceProtocol
        
    init(paymentService: PaymentServiceProtocol = PaymentGetnet()) {
        self.paymentService = paymentService
    }
    
    func perform(withCard card: Card) -> AnyPublisher<CreditCardPaymentReceipt, Error> {
        return self.paymentService.makePayment(with: card)
    }
}
