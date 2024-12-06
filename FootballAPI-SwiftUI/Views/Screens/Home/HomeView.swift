//
//  HomeView.swift
//  FootballAPI-SwiftUI
//
//  Created by İzmir İnovasyon ve Teknoloji on 3.12.2024.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()
    @State private var searchTerm: String = "" // Arama terimi için bir değişken

    var body: some View {
        NavigationStack {
            VStack {
                if viewModel.isLoading {
                    ProgressView("Loading...")
                } else if let errorMessage = viewModel.errorMessage {
                    Text(errorMessage)
                        .foregroundColor(.red)
                } else {
                    List(viewModel.filteredLeagues, id: \.id) { league in
                        NavigationLink(destination: HomeDetailView(selectedLeagueKey: String(league.key),selectedLeague: String(league.league))) {
                            VStack(alignment: .leading) {
                                Text(league.league)
                                    .font(.headline)
                            }
                        }
                    }
                }
            }
        }
        .searchable(text: $searchTerm, prompt: "Search Leagues")
        .onChange(of: searchTerm) { oldValue, newValue in
            viewModel.filterLeagues(by: newValue) // Arama terimine göre filtreleme
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
