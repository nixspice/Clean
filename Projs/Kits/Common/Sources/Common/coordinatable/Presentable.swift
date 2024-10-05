//
//  Presentable.swift
//  Common
//
//  Created by Nihad Allahveranov on 05.10.24.
//

import SwiftUI

public protocol Presentable {
    @MainActor func view() -> AnyView
}

extension AnyView: Presentable {
    public func view() -> AnyView {
        return self
    }
}
