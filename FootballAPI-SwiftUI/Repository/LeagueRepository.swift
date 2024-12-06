//
//  LeaguesRepository.swift
//  FootballAPI-SwiftUI
//
//  Created by İzmir İnovasyon ve Teknoloji on 4.12.2024.
//


class LeaguesRepository {
    private var apiClient: APIClient
    
    init(apiClient: APIClient = APIClient()) {
        self.apiClient = apiClient
    }
    
    // GET isteği - Ülkeleri almak için
    func fetchLeagues() async throws -> [Result] {
        let url = EndpointConstants.shared.leaguelist
        let leaugeModel: LeagueModel = try await apiClient.request(urlString: url, method: .get)
        return leaugeModel.result
    }
    
}
