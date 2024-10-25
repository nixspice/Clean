//
//  Presentable.swift
//  Common
//
//  Created by Nihad Allahveranov on 05.10.24.
//

import SwiftUI

public protocol Presentable {
    associatedtype Route: Routable
    associatedtype Body: View
    
    @MainActor func route(_ route: Route) -> Body
}
