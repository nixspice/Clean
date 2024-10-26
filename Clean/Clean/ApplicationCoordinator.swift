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
    static func start(with destination: ApplicationDestination = .auth(.default)) -> some View {
        switch destination {
        case let .auth(destination):
            Coordinator(AuthNavigation()) {
                $0.navigate(destination)
            }
        case let .home(destination):
            Coordinator(HomeCoordinator()) {
                $0.navigate(destination)
            }
        }
    }
}
