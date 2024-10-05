//
//  Coordinatable.swift
//  Common
//
//  Created by Nihad Allahveranov on 03.10.24.
//

import SwiftUI

public protocol Coordinatable: ObservableObject, Presentable {
    associatedtype Route: Routable
    
    var current: Route { get set }
    // TODO: create own NavigationStack
    var path: NavigationPath { get set }

    func push(_ route: Route)
    func pop()
    func popToRoot()
}

extension Coordinatable {
    public func push(_ route: Route) {
        current = route
        path.append(route)
    }
    
    public func pop() {
        if path.count == 0 { return }
        path.removeLast()
    }
    
    public func popToRoot() {
        path.removeLast(path.count - 1)
    }
}
