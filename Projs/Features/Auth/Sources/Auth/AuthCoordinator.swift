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
    
    public func view() -> AnyView {
        switch stack.current {
        case .auth:
            AnyView(
                AuthView(AuthView.mock)
            )
        case .login:
            AnyView(
                LoginView()
            )
        default:
            AnyView(
                AuthView(AuthView.mock)
            )
        }
    }
}
