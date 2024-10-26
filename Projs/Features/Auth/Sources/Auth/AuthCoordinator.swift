//
//  AuthCoordinator.swift
//  Auth
//
//  Created by Nihad Allahveranov on 05.10.24.
//

import Common
import SwiftUICore

public class AuthNavigation: Navigation {
    @Published public var path: [AuthorizeDestination] = .init()
    
    public init() {
        
    }
    
    public func navigate(_ destination: AuthorizeDestination) -> some View {
        switch destination {
        case .auth:
            AuthView(AuthView.mock)
        case .login:
            LoginView()
        case .register:
            RegisterView()
        default:
            AuthView(AuthView.mock)
        }
    }
}
