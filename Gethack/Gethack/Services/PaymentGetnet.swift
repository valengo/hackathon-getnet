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

struct AuthDTO: Decodable {
    let access_token: String
    let token_type: String
    let expires_in: Int
    let scope: String
}

struct ErrorDTO: Decodable {
    let error: String
    let error_description: String
}

class PaymentGetnet {
    
    // TODO configure using env
    let api = "api-sandbox.getnet.com.br"
    let jsonDecoder = JSONDecoder()

    func authenticate() -> AnyPublisher<AuthDTO, Error> {
        
        // TODO should fragment build error handling
        guard let request = buildRequest() else {return Fail(error: APIError.parserError(reason: "Failed building request")).eraseToAnyPublisher()}
        
        return URLSession.DataTaskPublisher(request: request, session: .shared)
            .tryMap { data, response in
                guard let httpResponse = response as? HTTPURLResponse else {
                    throw APIError.unknown
                }
                if (httpResponse.statusCode != 200) {
                    let errorData = try self.jsonDecoder.decode(ErrorDTO.self, from: data)
                    throw APIError.apiError(reason: errorData.error_description);
                }
                return data
            }
            .decode(type: AuthDTO.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
    
    private func buildRequest() -> URLRequest? {
        var components = URLComponents()
        components.scheme = "https"
        components.host = self.api
        components.path = "/auth/oauth/v2/token"
        
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
}
