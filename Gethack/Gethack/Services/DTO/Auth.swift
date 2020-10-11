//
//  AuthDTO.swift
//  Gethack
//
//  Created by Andressa Valengo on 10/10/20.
//

struct AuthDTO: Decodable {
    let access_token: String
    let token_type: String
    let expires_in: Int
    let scope: String
}

struct AuthErrorDTO: Decodable {
    let error: String
    let error_description: String
}
