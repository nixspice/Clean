//
//  Navigatable.swift
//  Common
//
//  Created by Nihad Allahveranov on 05.10.24.
//

import SwiftUI

public protocol Navigatable {
    associatedtype Path: Destination
    associatedtype Body: View
    
    @MainActor @ViewBuilder func navigate(_ destination: Path) -> Body
}
