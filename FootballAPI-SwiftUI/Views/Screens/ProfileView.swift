//
//  ProfileView.swift
//  FootballAPI-SwiftUI
//
//  Created by İzmir İnovasyon ve Teknoloji on 3.12.2024.
//

import SwiftUI

struct ProfileView: View {
    @AppStorage("isLoggedIn") private var isLoggedIn: Bool = false

    var body: some View {
        VStack {
            Text("Profile Screen")
            // Çıkış butonu
            Button(action: {
                isLoggedIn = false   // Çıkış yapıldığında durumu false yap
            }) {
                Text("Log Out")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
         
        }
    }
}

#Preview {
    ProfileView()
}
