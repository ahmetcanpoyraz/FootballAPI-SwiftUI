//
//  HomeViewModel.swift
//  FootballAPI-SwiftUI
//
//  Created by İzmir İnovasyon ve Teknoloji on 3.12.2024.
//

import Foundation
import Combine

@MainActor
class HomeViewModel: ObservableObject {
    @Published var leagueList: [League] = []
    @Published var filteredLeagues: [League] = [] // Arama sonuçlarına göre filtrelenmiş ligler
    @Published var isLoading = false
    @Published var errorMessage: String? = nil

    private var repository: LeagueRepository

    init(repository: LeagueRepository = LeagueRepository()) {
        self.repository = repository
        fetchLeagues()
    }
    
    func filterLeagues(by term: String) {
            if term.isEmpty {
                filteredLeagues = leagueList // Arama boşsa, tüm ligleri göster
            } else {
                filteredLeagues = leagueList.filter { $0.league.lowercased().contains(term.lowercased()) }
            }
        }

    // GET isteği
    func fetchLeagues() {
        Task {
            self.isLoading = true
            do {
                let leauges = try await repository.fetchLeagues()
                self.leagueList = leauges
                self.filteredLeagues = leauges
            } catch let error as NetworkError {
                self.errorMessage = error.localizedDescription
            } catch {
                self.errorMessage = "An unknown error occurred."
            }
            self.isLoading = false
        }
    }
    


    
    
}




