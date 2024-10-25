//
//  HomeCoordinator.swift
//  Home
//
//  Created by Nihad Allahveranov on 20.10.24.
//

import Common
import SwiftUICore

public class HomeCoordinator: Coordinatable {
    @Published public var stack = [HomeRoute]()
    
    public init() {}
    
    @ViewBuilder
    public func route(_ route: HomeRoute) -> some View {
        switch route {
        default:
            HomeView()
        }
    }
}
