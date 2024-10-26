//
//  Navigation.swift
//  Common
//
//  Created by Nihad Allahveranov on 03.10.24.
//

import SwiftUICore

public protocol Navigation: ObservableObject, Navigatable {
    var path: [Path] { get set }
    
    func push(_ destination: Path)
    @discardableResult
    func pop() -> Path?
    func pop(to destination: Path)
    func popToRoot()
}

public extension Navigation {
    func push(_ destination: Path) {
        path.append(destination)
    }
    
    @discardableResult
    func pop() -> Path? {
        path.popLast()
    }
    
    func pop(to destination: Path) {
        guard let index = path.firstIndex(of: destination) else { return }
        
        path.removeLast(path.count - index - 1)
    }
    
    func popToRoot() {
        path.removeAll()
    }
}
