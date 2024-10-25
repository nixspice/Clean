//
//  AuthCoordinator.swift
//  Auth
//
//  Created by Nihad Allahveranov on 05.10.24.
//

import Common
import SwiftUICore

public class AuthCoordinator: Coordinatable {
    @Published public var stack = [AuthorizeRoute]()
    
    public init() {}
    
    @ViewBuilder
    public func route(_ route: AuthorizeRoute) -> some View {
        switch route {
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
