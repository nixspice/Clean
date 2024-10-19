//
//  Coordinator.swift
//  Common
//
//  Created by Nihad Allahveranov on 05.10.24.
//

import SwiftUI

public struct Coordinator<Coordinator: Coordinatable>: View {
    @StateObject var coordinator: Coordinator
    
    public init(_ coordinator: Coordinator) {
        _coordinator = .init(wrappedValue: coordinator)
    }
    
    public var body: some View {
        NavigationStack(path: $coordinator.stack) {
            coordinator.view
                .navigationDestination(for: Coordinator.Route.self) { route in
                    coordinator.view
                }
        }
        .environmentObject(coordinator)
    }
}
