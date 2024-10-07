//
//  Presentable.swift
//  Common
//
//  Created by Nihad Allahveranov on 05.10.24.
//

import SwiftUI

public protocol Presentable {
    associatedtype Body: View
    
    @MainActor var view: Body { get }
}
