//
//  TeamsModel.swift
//  FootballAPI-SwiftUI
//
//  Created by İzmir İnovasyon ve Teknoloji on 5.12.2024.
//

import Foundation

// MARK: - TeamsModel
struct TeamModel: Codable {
    let success: Bool
    let result: [Team]
}

// MARK: - Result
struct Team: Codable {
    let rank, lose, win, play: Int
       let point: Int
       let team: String
}
