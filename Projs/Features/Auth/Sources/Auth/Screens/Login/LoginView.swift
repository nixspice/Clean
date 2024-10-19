//
//  LoginView.swift
//  Auth
//
//  Created by Nihad Allahveranov on 05.10.24.
//

import SwiftUI

public struct LoginView: View {
    @EnvironmentObject private var coordinator: AuthCoordinator
    
    public var body: some View {
        VStack {
            Text("Hello, Login!")
            
            Button("Register") {
                coordinator.push(.register)
            }
        }
        .navigationTitle("Login")
    }
}

#Preview {
    LoginView()
}
