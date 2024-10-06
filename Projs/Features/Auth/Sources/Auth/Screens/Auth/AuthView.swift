//
//  AuthView.swift
//  Auth
//
//  Created by Nihad Allahveranov on 29.09.24.
//

import SwiftUI

public struct AuthView: View {
    @EnvironmentObject private var coordinator: AuthCoordinator
    
    let model: Model
    
    public init(
        _ model: Model
    ) {
        self.model = model
    }
    
    public var body: some View {
        VStack {
            Text(
                "Hello, Auth! \(model.id) \(model.core.id) \(model.common.id) \(model.design.id)"
            )
            
            Button("Login") {
                coordinator.push(.login)
            }
        }
        .navigationTitle("Authorization")
    }
}

#Preview {
    AuthView(AuthView.mock)
}
