//
//  TeamsRepository.swift
//  FootballAPI-SwiftUI
//
//  Created by İzmir İnovasyon ve Teknoloji on 5.12.2024.
//

import Foundation

class TeamsRepository {
    private var apiClient: APIClient
    
    init(apiClient: APIClient = APIClient()) {
        self.apiClient = apiClient
    }
    
    // GET isteği - Takımları almak için
    func fetchTeams(selectedLeagueKey : String) async throws -> [Teams] {
        let url = EndpointConstants.shared.teams
        let teamModel: TeamsModel = try await apiClient.request(urlString: url, method: .get)
        return teamModel.result
    }
    
}
