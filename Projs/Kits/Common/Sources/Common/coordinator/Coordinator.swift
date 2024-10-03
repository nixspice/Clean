//
//  Coordinator.swift
//  Common
//
//  Created by Nihad Allahveranov on 03.10.24.
//

import SwiftUI

open class Coordinator<`Type`: Route>: Coordinatable {
    public let type: `Type`
    
    public init(_ type: `Type`) {
        self.type = type
    }
    
    @ViewBuilder
    open func view() -> any View {
        EmptyView()
    }
}
