//
//  Coordinatable.swift
//  Common
//
//  Created by Nihad Allahveranov on 03.10.24.
//

import SwiftUICore

public protocol Coordinatable: ObservableObject, Presentable {
    associatedtype Route: Routable
    
    var stack: NavigationStack<Route> { get set }

    func push(_ route: Route)
    @discardableResult func pop() -> Route?
    func popToRoot()
}

extension Coordinatable {
    public func push(_ route: Route) {
        stack.value.append(route)
    }
    
    @discardableResult
    public func pop() -> Route? {
        stack.value.popLast()
    }
    
    public func pop(to route: Route) {
        guard let index = stack.value.firstIndex(of: route) else {
            return
        }
        
        stack.value.removeLast(stack.value.count - index - 1)
    }
    
    public func popToRoot() {
        stack.value.removeAll()
    }
}
