//
//  CardTokenDTO.swift
//  Gethack
//
//  Created by Andressa Valengo on 10/10/20.
//

struct RequestCardTokenDTO: Encodable {
    let card_number: String
    let customer_id: String
}

struct ResponseCardTokenDTO: Decodable {
    let number_token: String
}

struct CardTokenErrorDTO: Decodable {
    let message: String
    let name: String
    // let staus_code: Int
    // let details: []
}

