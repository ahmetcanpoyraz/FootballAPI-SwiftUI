//
//  HomeDetailViewModel.swift
//  FootballAPI-SwiftUI
//
//  Created by İzmir İnovasyon ve Teknoloji on 4.12.2024.
//

import Foundation

@MainActor
class HomeDetailViewModel: ObservableObject {
    @Published var teamList: [Team] = []
    @Published var isLoading = false
    @Published var errorMessage: String? = nil
    
    private var repository: TeamRepository

    init(repository: TeamRepository = TeamRepository()) {
        self.repository = repository
    }
    
    
    // GET isteği
    func fetchTeams(selectedLeagueKey : String) {
        print(selectedLeagueKey)
        Task {
            self.isLoading = true
            do {
                let teams = try await repository.fetchTeams(selectedLeagueKey: selectedLeagueKey)
                self.teamList = teams
            } catch let error as NetworkError {
                self.errorMessage = error.localizedDescription
            } catch {
                self.errorMessage = "An unknown error occurred."
            }
            self.isLoading = false
        }
    }
    
    
    
    
}
