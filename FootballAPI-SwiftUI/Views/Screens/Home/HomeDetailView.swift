//
//  HomeDetailView.swift
//  FootballAPI-SwiftUI
//
//  Created by İzmir İnovasyon ve Teknoloji on 6.12.2024.
//


import SwiftUI

struct HomeDetailView: View {
    
    @StateObject private var viewModel = HomeDetailViewModel()
    var selectedLeagueKey : String
    var selectedLeague : String
    
    var body: some View {
        NavigationStack{
            VStack {
                
               
                    VStack{
                        HStack{
                            Text("Sıra")
                                .font(.headline)
                            Spacer()
                            Text("Takım")
                                .font(.headline)
                            Spacer()
                            Text("Puan")
                                .font(.headline)
                        }.padding(.horizontal, 17)
                        
                        List(viewModel.teamList, id: \.rank) { team in
                            VStack(alignment: .leading) {
                                HStack{
                                    Text(String(team.rank))
                                        .font(.headline)
                                    Spacer()
                                    Text(team.team)
                                        .font(.headline)
                                    Spacer()
                                    Text(String(team.point))
                                        .font(.headline)
                                }.padding(.horizontal, 10)
                            
                                
                            }
                        }.contentMargins(.top, 0)
                            .contentMargins(.horizontal, 0)
                
                    
                }
            }
        } .navigationTitle(selectedLeague)
            .navigationBarTitleDisplayMode(.inline) // Başlığı ortalamak için
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text(selectedLeague)
                        .font(.headline)
                        .foregroundColor(.gray) // Başlık rengini gri yap
                }
            }
            .padding(.top, 10)
            .onAppear {
                viewModel.fetchTeams(selectedLeagueKey: selectedLeagueKey)
            }
        
    }
    
}
    
    struct HomeDetailView_Previews: PreviewProvider {
        static var previews: some View {
            HomeDetailView(selectedLeagueKey: "super-lig", selectedLeague: "League Name")
        }
    }
