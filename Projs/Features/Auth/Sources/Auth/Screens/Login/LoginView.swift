//
//  LoginView.swift
//  Auth
//
//  Created by Nihad Allahveranov on 05.10.24.
//

import SwiftUI

public struct LoginView: View {
    @EnvironmentObject private var navigator: AuthNavigation
    
    public var body: some View {
        VStack {
            Text("Hello, Login!")
            
            Button("Register") {
                navigator.push(.register)
            }
        }
        .navigationTitle("Login")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LoginView()
}
