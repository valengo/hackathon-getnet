//
//  Pay.swift
//  Gethack
//
//  Created by Andressa Valengo on 10/10/20.
//

import Combine

class MakeCreditCardPayment {
    
    let paymentService: PaymentServiceProtocol
    
    var cancellable:  AnyCancellable?
    
    init(paymentService: PaymentServiceProtocol = PaymentGetnet()) {
        self.paymentService = paymentService
        
        cancellable = paymentService.authenticate()
            .sink(receiveCompletion: { print ("Received completion: \($0).") },
                  receiveValue: { authDTO in print ("Received AuthDTO: \(authDTO).")})
    }
    
    func perform() {

    }
    
    deinit {
        self.cancellable?.cancel()
    }
}
