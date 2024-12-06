//
//  TeamsModel.swift
//  FootballAPI-SwiftUI
//
//  Created by İzmir İnovasyon ve Teknoloji on 5.12.2024.
//

import Foundation

// MARK: - TeamsModel
struct TeamsModel: Codable {
    let success: Bool
    let result: [Teams]
}

// MARK: - Result
struct Teams: Codable {
    let rank, lose, win, play: String
    let point, team: String
}
