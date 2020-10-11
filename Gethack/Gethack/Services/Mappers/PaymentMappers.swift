//
//  PaymentMappers.swift
//  Gethack
//
//  Created by Andressa Valengo on 11/10/20.
//

import Foundation

class PaymentMappers {
    // TODO pass all needed entities and values
    static func map(card: Card, cardToken: String) -> RequestCreditPaymentDTO {
        let order = OrderDTO(order_id: "12345")
        let billingAddress = BillingAddressDTO()
        let customer = CustomerDTO(customer_id: "12345", billing_address: billingAddress)
        let card = CardDTO(number_token: cardToken, cardholder_name: card.cardholderName, expiration_month: card.expirationMonth, expiration_year: card.expirationYear)
        let credit = CreditDTO(delayed: false, save_card_data: false, transaction_type: "FULL", number_installments: 1, card: card)
        return RequestCreditPaymentDTO(amount: 1000, order: order, customer: customer, credit: credit)
    }
    
    static func map(responseDTO: ResponseCreditPaymentDTO) -> CreditCardPaymentReceipt {
        return CreditCardPaymentReceipt(paymentId: responseDTO.payment_id, amount: responseDTO.amount)
    }
}
