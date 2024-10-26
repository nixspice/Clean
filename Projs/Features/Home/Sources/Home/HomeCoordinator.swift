//
//  HomeCoordinator.swift
//  Home
//
//  Created by Nihad Allahveranov on 20.10.24.
//

import Common
import SwiftUICore

public class HomeCoordinator: Navigation {
    @Published public var path: [HomeDestination] = .init()
    
    public init() {}
    
    @ViewBuilder
    public func navigate(_ destination: HomeDestination) -> some View {
        switch destination {
        default:
            HomeView()
        }
    }
}
