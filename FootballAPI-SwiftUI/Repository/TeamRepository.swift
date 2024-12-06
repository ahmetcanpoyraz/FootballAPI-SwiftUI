//
//  TeamsRepository.swift
//  FootballAPI-SwiftUI
//
//  Created by İzmir İnovasyon ve Teknoloji on 5.12.2024.
//

import Foundation

class TeamRepository {
    private var apiClient: APIClient
    
    init(apiClient: APIClient = APIClient()) {
        self.apiClient = apiClient
    }
    
    // GET isteği - Takımları almak için
    func fetchTeams(selectedLeagueKey : String) async throws -> [Team] {
        let url = EndpointConstants.shared.teams + selectedLeagueKey
        print(url)
        let teamModel: TeamModel = try await apiClient.request(urlString: url, method: .get)
        print(teamModel)
        return teamModel.result
    }
    
}
