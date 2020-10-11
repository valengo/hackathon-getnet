//
//  PaymentGetnet.swift
//  Gethack
//
//  Created by Andressa Valengo on 10/10/20.
//

import Foundation
import Combine

enum AuthVariables: String {
    case clientId = "CLIENT_ID"
    case clientSecret = "CLIENT_SECRET"
    case sellerId = "SELLER_ID"
}

enum APIError: Error, LocalizedError {
    case unknown, apiError(reason: String), parserError(reason: String), networkError(from: URLError)

    var errorDescription: String? {
        switch self {
        case .unknown:
            return "Unknown error"
        case .apiError(let reason), .parserError(let reason):
            return reason
        case .networkError(let from):
            return from.localizedDescription
        }
    }
}

class PaymentGetnet: PaymentServiceProtocol {
    // TODO configure using env
    let api = "api-sandbox.getnet.com.br"
    let jsonDecoder = JSONDecoder()
    var cancellables: [AnyCancellable] = []
    
    func makePayment(with creditCard: Card) -> AnyPublisher<CreditCardPaymentReceipt, Error> {
        return authenticate().flatMap({authDTO in
            return self.getCardToken(authToken: authDTO.access_token, requestDTO: RequestCardTokenDTO(card_number: creditCard.cardNumber, customer_id: "12345")).eraseToAnyPublisher().flatMap({ [self]cardDTO in
                return creditPayment(authToken: authDTO.access_token, requestDTO: PaymentMappers.map(card: creditCard, cardToken: cardDTO.number_token))
            })
        }).eraseToAnyPublisher()
    }
    
    private func authenticate() -> AnyPublisher<AuthDTO, Error> {
        
        // TODO should fragment build error handling
        guard let request = buildAuthTokenRequest() else {return Fail(error: APIError.parserError(reason: "Failed building request")).eraseToAnyPublisher()}
        
        return URLSession.DataTaskPublisher(request: request, session: .shared)
            .tryMap { data, response in
                guard let httpResponse = response as? HTTPURLResponse else {
                    throw APIError.unknown
                }
                if (httpResponse.statusCode != 200) {
                    let errorData = try self.jsonDecoder.decode(AuthErrorDTO.self, from: data)
                    throw APIError.apiError(reason: errorData.error_description);
                }
                return data
            }
            .decode(type: AuthDTO.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
    
    private func getCardToken(authToken: String, requestDTO: RequestCardTokenDTO) -> AnyPublisher<ResponseCardTokenDTO, Error> {
        // TODO should fragment build error handling
        guard let request = buildCardTokenRequest(authToken: authToken, cardTokenDTO: requestDTO) else {return Fail(error: APIError.parserError(reason: "Failed building request")).eraseToAnyPublisher()}
        
        return URLSession.DataTaskPublisher(request: request, session: .shared)
            .tryMap { data, response in
                guard let httpResponse = response as? HTTPURLResponse else {
                    throw APIError.unknown
                }
                
                if (httpResponse.statusCode != 201) {
                    let errorData = try self.jsonDecoder.decode(CardTokenErrorDTO.self, from: data)
                    throw APIError.apiError(reason: String(errorData.message));
                }
                return data
            }
            .decode(type: ResponseCardTokenDTO.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
    
    private func creditPayment(authToken: String, requestDTO: RequestCreditPaymentDTO) -> AnyPublisher<CreditCardPaymentReceipt, Error> {
        
        guard let request = buildPaymentCreditCardRequest(authToken: authToken, creditDTO: requestDTO) else {return Fail(error: APIError.parserError(reason: "Failed building request")).eraseToAnyPublisher()}
        
        return URLSession.DataTaskPublisher(request: request, session: .shared)
            .tryMap { data, response in
                guard let httpResponse = response as? HTTPURLResponse else {
                    throw APIError.unknown
                }
                
                if (httpResponse.statusCode != 200) {
                    let errorData = try self.jsonDecoder.decode(CardTokenErrorDTO.self, from: data)
                    throw APIError.apiError(reason: String(errorData.name));
                }
                return data
            }
            .decode(type: ResponseCreditPaymentDTO.self, decoder: JSONDecoder())
            .map(PaymentMappers.map(responseDTO:))
            .eraseToAnyPublisher()
    }
    
    private func buildAuthTokenRequest() -> URLRequest? {
        
        let path = "/auth/oauth/v2/token"
        
        var components = URLComponents()
        components.scheme = "https"
        components.host = self.api
        components.path = path
        
        guard let url = components.url,
              let clientId = ProcessInfo.processInfo.environment[AuthVariables.clientId.rawValue],
              let clientSecret = ProcessInfo.processInfo.environment[AuthVariables.clientSecret.rawValue],
              let loginData = String(format: "%@:%@", clientId, clientSecret).data(using: String.Encoding.utf8) else {return nil}
        
        let base64LoginData = loginData.base64EncodedString()
        
        var request = URLRequest(url: url)
        request.setValue("Basic \(base64LoginData)", forHTTPHeaderField: "Authorization")
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "POST"
        
        let data = "scope=oob&grant_type=client_credentials".data(using:String.Encoding.ascii, allowLossyConversion: false)
        request.httpBody = data
        
        return request
    }
    
    private func buildCardTokenRequest(authToken: String, cardTokenDTO: RequestCardTokenDTO) -> URLRequest? {
            
        let path = "/v1/tokens/card"
        
        var components = URLComponents()
        components.scheme = "https"
        components.host = self.api
        components.path = path
        
        guard let url = components.url,
              let data = try? JSONEncoder().encode(cardTokenDTO) else {return nil}
        
        var request = URLRequest(url: url)
        request.setValue("application/json; charset=utf-8", forHTTPHeaderField: "Content-Type")
        request.setValue("Bearer \(authToken)", forHTTPHeaderField: "Authorization")
        request.httpMethod = "POST"
        request.httpBody = data
        
        return request
    }
    
    private func buildPaymentCreditCardRequest(authToken: String, creditDTO: RequestCreditPaymentDTO) -> URLRequest? {
        
        let path = "/v1/payments/credit"
        
        var components = URLComponents()
        components.scheme = "https"
        components.host = self.api
        components.path = path
        
        guard let url = components.url,
              let seller_id = ProcessInfo.processInfo.environment[AuthVariables.sellerId.rawValue]
        else {return nil}
        
        creditDTO.seller_id = seller_id
        
        guard let data = try? JSONEncoder().encode(creditDTO) else {return nil}
    
        var request = URLRequest(url: url)
        request.setValue("application/json; charset=utf-8", forHTTPHeaderField: "Content-Type")
        request.setValue("Bearer \(authToken)", forHTTPHeaderField: "Authorization")
        request.httpMethod = "POST"
        request.httpBody = data
        
        
        return request
    }
}
