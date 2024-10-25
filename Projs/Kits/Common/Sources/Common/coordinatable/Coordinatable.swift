//
//  Coordinatable.swift
//  Common
//
//  Created by Nihad Allahveranov on 03.10.24.
//

import SwiftUICore

public protocol Coordinatable: ObservableObject, Presentable {
    var stack: [Route] { get set }
    
    func push(_ route: Route)
    @discardableResult func pop() -> Route?
    func popToRoot()
}

extension Coordinatable {
    public func push(_ route: Route) {
        stack.append(route)
    }
    
    @discardableResult
    public func pop() -> Route? {
        stack.popLast()
    }
    
    public func pop(to route: Route) {
        guard let index = stack.firstIndex(of: route) else {
            return
        }
        
        stack.removeLast(stack.count - index - 1)
    }
    
    public func popToRoot() {
        stack.removeAll()
    }
}
