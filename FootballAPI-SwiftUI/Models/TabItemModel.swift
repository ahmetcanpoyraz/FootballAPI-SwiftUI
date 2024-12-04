//
//  TabItemModel.swift
//  FootballAPI-SwiftUI
//
//  Created by İzmir İnovasyon ve Teknoloji on 3.12.2024.
//

// Models/TabItemModel.swift
import SwiftUI

/// Tab bar için bir sekmeyi temsil eden model
struct TabItemModel {
    let title: String        // Sekmenin adı
    let systemImage: String  // SF Symbol ya da özel simge adı
    let view: AnyView        // İlgili görünüm
}
