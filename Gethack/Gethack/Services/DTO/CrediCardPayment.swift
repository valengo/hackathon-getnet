//
//  CrediCardPayment.swift
//  Gethack
//
//  Created by Andressa Valengo on 11/10/20.
//

class RequestCreditPaymentDTO: Codable {
    var seller_id: String
    let amount: Double
    var order: OrderDTO
    var customer: CustomerDTO
    var credit: CreditDTO
    
    init(amount: Double, order: OrderDTO, customer: CustomerDTO, credit: CreditDTO) {
        self.seller_id = ""
        self.amount = amount
        self.order = order
        self.customer = customer
        self.credit = credit
    }
}

struct ResponseCreditPaymentDTO: Decodable {
    let payment_id, seller_id: String
    let amount: Double
    let currency, order_id, status, received_at: String
    let credit: CreditResponseDTO
}

struct CreditResponseDTO: Decodable {
    let delayed: Bool
    let authorization_code, authorized_at, reason_code, reason_message: String
    let acquirer, soft_descriptor, terminal_nsu: String
    let brand: String?
    let acquirer_transaction_id, transaction_id: String
}

struct BillingAddressDTO: Codable {

}

struct OrderDTO: Codable {
    let order_id: String
}

struct CustomerDTO: Codable {
    let customer_id: String
    let billing_address: BillingAddressDTO
}

struct CreditDTO: Codable {
    let delayed: Bool
    let save_card_data: Bool
    let transaction_type: String
    let number_installments: Int
    let card: CardDTO
}

struct CardDTO: Codable {
    let number_token: String
    let cardholder_name: String
    let expiration_month: String
    let expiration_year: String
}
