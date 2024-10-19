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

final class ApplicationCoordinator: Coordinatable {
    @Published var stack = [ApplicationRoute]()
    
    public var view: some View {
        Group {
            switch stack.last {
            case .home:
                Coordinator(HomeCoordinator())
            default:
                Coordinator(AuthCoordinator())
            }
        }
    }
}
