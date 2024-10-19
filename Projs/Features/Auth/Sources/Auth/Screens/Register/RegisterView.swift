//
//  RegisterView.swift
//  Auth
//
//  Created by Nihad Allahveranov on 20.10.24.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject private var coordinator: AuthCoordinator
    
    var body: some View {
        VStack {
            Text("Hello, Register!")
            
            Button("Go Root") {
                coordinator.popToRoot()
            }
        }
        .navigationTitle("Register")
    }
}

#Preview {
    RegisterView()
}
