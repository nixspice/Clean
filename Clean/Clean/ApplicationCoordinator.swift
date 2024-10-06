//
//  ApplicationCoordinator.swift
//  Clean
//
//  Created by Nihad Allahveranov on 03.10.24.
//

import Auth
import Common
import Foundation
import SwiftUICore

final class ApplicationCoordinator: Coordinatable {
    var stack = NavigationStack<ApplicationRoute>()
    
    func view() -> AnyView {
        switch stack.current {
        default:
            AnyView(
                Coordinator(AuthCoordinator())
            )
        }
    }
}
