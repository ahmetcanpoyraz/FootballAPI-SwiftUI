//
//  LoginViewModel.swift
//  FootballAPI-SwiftUI
//
//  Created by İzmir İnovasyon ve Teknoloji on 3.12.2024.
//

import SwiftUI

class LoginViewModel: ObservableObject {
    @Published var username: String = ""  // Kullanıcı adı
    @Published var password: String = ""  // Şifre
    @Published var errorMessage: String? = nil  // Hata mesajı
    @AppStorage("isLoggedIn") private var isLoggedIn: Bool = false
    
    // Giriş yapma fonksiyonu
    func loginUser() {
        // Basit bir doğrulama örneği (örneğin, sabit bir kullanıcı adı ve şifre ile)
        if username == "user" && password == "password" {
            isLoggedIn = true // Başarılı giriş
            errorMessage = nil // Hata mesajını temizle
        } else {
            errorMessage = "Invalid username or password." // Başarısız giriş mesajı
        }
    }
}

