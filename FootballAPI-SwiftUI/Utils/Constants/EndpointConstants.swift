//
//  EndpointConstants.swift
//  FootballAPI-SwiftUI
//
//  Created by İzmir İnovasyon ve Teknoloji on 3.12.2024.
//

import Foundation


class EndpointConstants {
    static let shared = EndpointConstants()  // Singleton örneği

    private init() {}  // Private initializer, dışarıdan instance oluşturulmasını engeller

    let baseURL = "https://api.collectapi.com/sport/"
    let apiKey = "apikey 4JR9w2xpiQnHaWLm7lHxN2:5sNy7VQ1l0Ra0k1ee5soLT"
    
    let leaguelist = "leaguesList"
    let teams = "league"
    
    
    // Diğer endpoint'ler buraya eklenebilir
    // let playersEndpoint = "https://api-football-v1.p.rapidapi.com/v3/players"
    // Diğer sabitler...
}


