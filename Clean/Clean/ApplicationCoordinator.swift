//
//  ApplicationCoordinator.swift
//  Clean
//
//  Created by Nihad Allahveranov on 03.10.24.
//

import Auth
import Home
import Common
import Foundation
import SwiftUICore

final class ApplicationCoordinator {
    @MainActor @ViewBuilder
    static func start(with route: ApplicationRoute = .auth(.default)) -> some View {
        switch route {
        case let .auth(route):
            Coordinator(AuthCoordinator()) {
                $0.route(route)
            }
        case let .home(route):
            Coordinator(HomeCoordinator()) {
                $0.route(route)
            }
        }
    }
}
