//
//  Coordinator.swift
//  Common
//
//  Created by Nihad Allahveranov on 05.10.24.
//

import SwiftUI

public struct Coordinator<Coordinator: Coordinatable, Content: View>: View {
    @StateObject var coordinator: Coordinator
    let content: (Coordinator) -> Content
    
    public init(_ coordinator: Coordinator, @ViewBuilder content: @escaping (Coordinator) -> Content) {
        self._coordinator = .init(wrappedValue: coordinator)
        self.content = content
    }
    
    public var body: some View {
        NavigationStack(path: $coordinator.stack) {
            content(coordinator)
                .navigationDestination(for: Coordinator.Route.self) { route in
                    coordinator.route(route)
                }
        }
        .environmentObject(coordinator)
    }
}
