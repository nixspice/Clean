//
//  AuthCoordinator.swift
//  Auth
//
//  Created by Nihad Allahveranov on 05.10.24.
//

import Common
import SwiftUICore

public class AuthCoordinator: Coordinatable {
    public var stack = NavigationStack<AuthorizeRoute>()
    
    public init() {}
    
    public var view: some View {
        Group {
            switch stack.current {
            case .auth:
                AuthView(AuthView.mock)
            case .login:
                LoginView()
            default:
                AuthView(AuthView.mock)
            }
        }
    }
}
