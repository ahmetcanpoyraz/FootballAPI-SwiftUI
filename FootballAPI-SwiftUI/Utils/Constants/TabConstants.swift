//
//  TabConstants.swift
//  FootballAPI-SwiftUI
//
//  Created by İzmir İnovasyon ve Teknoloji on 3.12.2024.
//

import SwiftUI

enum TabConstants {
    static let tabs: [TabItemModel] = [
        TabItemModel(title: "Home", systemImage: "house", view: AnyView(HomeView())),
        TabItemModel(title: "Profile", systemImage: "person", view: AnyView(ProfileView()))
    ]
}
