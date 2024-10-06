//
//  NavigationStack.swift
//  Common
//
//  Created by Nihad Allahveranov on 06.10.24.
//

import Foundation
import SwiftUICore

public class NavigationStack<Route: Routable> {
    @Published public var value: [Route] = []
    
    public init() {}
    
    public var current: Route? {
        return value.last
    }
    
    public func isInStack(_ route: Route) -> Bool {
        return value.contains { $0 == route }
    }
}
