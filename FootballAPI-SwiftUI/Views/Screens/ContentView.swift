//
//  ContentView.swift
//  FootballAPI-SwiftUI
//
//  Created by İzmir İnovasyon ve Teknoloji on 2.12.2024.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @AppStorage("isLoggedIn") private var isLoggedIn: Bool = false
    
    var body: some View {
        if isLoggedIn {
            
            
            TabView {
                ForEach(0..<TabConstants.tabs.count, id: \.self) { index in
                    TabConstants.tabs[index].view
                        .tabItem {
                            Label(TabConstants.tabs[index].title, systemImage: TabConstants.tabs[index].systemImage)
                        }
                }
            }
                    } else {
                        LoginView() // Kullanıcı giriş yapmadıysa LoginView
                    }
      
    }
    
}

#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
