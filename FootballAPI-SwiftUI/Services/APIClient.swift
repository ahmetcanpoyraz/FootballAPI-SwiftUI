//
//  APIClient.swift
//  FootballAPI-SwiftUI
//
//  Created by İzmir İnovasyon ve Teknoloji on 3.12.2024.
//

// APIClient.swift
import Foundation

class APIClient {
    
    private let session: URLSession
    
    init(session: URLSession = .shared) {
        self.session = session
    }
    
    let apiHeaders = [
      "content-type": "application/json",
      "authorization": EndpointConstants.shared.apiKey
    ]
  
    // Genel HTTP request fonksiyonu (GET, POST, PUT, DELETE)
    func request<T: Codable>(urlString: String, method: HTTPMethod, body: Data? = nil) async throws -> T {
        guard let url = URL(string: EndpointConstants.shared.baseURL + urlString) else {
            throw NetworkError.invalidURL
        }
        var request = URLRequest(url: url)
        request.allHTTPHeaderFields = apiHeaders
        
        // Eğer POST veya PUT isteği ise, body parametresini ekleyebiliriz
        if let body = body {
            request.httpBody = body
        }
        
        do {
            let (data, response) = try await session.data(for: request)
            
            // HTTP Status Code check
            guard let httpResponse = response as? HTTPURLResponse else {
                throw NetworkError.requestFailed
            }
            switch httpResponse.statusCode {
            case 200...299:
                break // Valid response
            case 401:
                throw NetworkError.unauthorized
            default:
                throw NetworkError.serverError
            }
            let decodedData = try JSONDecoder().decode(T.self, from: data)
            return decodedData
        } catch {
            throw NetworkError.requestFailed
        }
    }
}
