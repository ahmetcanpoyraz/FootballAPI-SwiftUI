//
//  NetworkError.swift
//  FootballAPI-SwiftUI
//
//  Created by İzmir İnovasyon ve Teknoloji on 3.12.2024.
//

enum NetworkError: Error {
    case invalidURL
    case unauthorized
    case serverError
    case requestFailed
    case noData
    case decodingError
    
    var errorDescription: String? {
        switch self {
        case .invalidURL:
            return "The URL is invalid."
        case .unauthorized:
            return "Unauthorized access."
        case .serverError:
            return "A server error occurred."
        case .requestFailed:
            return "Request failed."
        case .noData:
            return "No data received from the server."
        case .decodingError:
            return "Failed to decode the data."
        }
    }
}
