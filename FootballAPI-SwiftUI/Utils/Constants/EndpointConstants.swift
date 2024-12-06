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
    let apiKey = "apikey 7KZsEYxCD0B9J1XwDGBtUF:2T9BHGW4dDX5LVQx3O6f5y"
    
    let leaguelist = "leaguesList"
    let teams = "league?data.league="
    
    
 
}


