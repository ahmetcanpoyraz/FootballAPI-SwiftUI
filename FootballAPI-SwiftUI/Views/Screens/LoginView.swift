//
//  LoginView.swift
//  FootballAPI-SwiftUI
//
//  Created by İzmir İnovasyon ve Teknoloji on 3.12.2024.
//

import SwiftUI

struct LoginView: View {
    @StateObject private var viewModel = LoginViewModel() // ViewModel'i başlatma

    var body: some View {
        VStack {
            // Kullanıcı adı
            TextField("Username", text: $viewModel.username)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .autocapitalization(.none) // Küçük harflerle başlasın
            
            // Şifre
            SecureField("Password", text: $viewModel.password)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            // Hata mesajı
            if let errorMessage = viewModel.errorMessage {
                Text(errorMessage)
                    .foregroundColor(.red)
                    .padding()
            }
            
            // Giriş butonu
            Button(action: {
                viewModel.loginUser() // Giriş işlemi
            }) {
                Text("Log In")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
            

            Spacer()
        }
        .padding()
        
    }
}



#Preview {
    LoginView()
}
