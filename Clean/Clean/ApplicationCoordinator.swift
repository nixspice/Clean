//
//  ApplicationCoordinator.swift
//  Clean
//
//  Created by Nihad Allahveranov on 03.10.24.
//

import Auth
import Common
import SwiftUI

final class ApplicationCoordinator: Coordinatable {
    @Published var current: ApplicationRoute
    @Published var path = NavigationPath()
    
    init(_ current: ApplicationRoute) {
        self.current = current
    }
    
    func view() -> AnyView {
        switch current {
        case .auth:
            AnyView(
                Coordinator(AuthCoordinator(.default))
            )
        }
    }
}
