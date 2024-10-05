//
//  AuthCoordinator.swift
//  Auth
//
//  Created by Nihad Allahveranov on 05.10.24.
//

import SwiftUI
import Common

public class AuthCoordinator: Coordinatable {
    @Published public var current: AuthorizeRoute
    @Published public var path = NavigationPath()
    
    public init(_ current: AuthorizeRoute) {
        self.current = current
    }
    
    public func view() -> AnyView {
        switch current {
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
