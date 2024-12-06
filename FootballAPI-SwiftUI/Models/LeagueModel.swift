//
//  LeagueModel.swift
//  FootballAPI-SwiftUI
//
//  Created by İzmir İnovasyon ve Teknoloji on 4.12.2024.
//

import Foundation

struct LeagueModel: Codable {
    let success: Bool
    let result: [League]
}

struct League: Codable, Identifiable {
    let id = UUID()
    let league, key: String
}
