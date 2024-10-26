//
//  Coordinator.swift
//  Common
//
//  Created by Nihad Allahveranov on 05.10.24.
//

import SwiftUI

public struct Coordinator<Navigator: Navigation, Content: View>: View {
    @StateObject var navigator: Navigator
    let content: (Navigator) -> Content
    
    public init(_ navigator: Navigator, @ViewBuilder content: @escaping (Navigator) -> Content) {
        self._navigator = .init(wrappedValue: navigator)
        self.content = content
    }
    
    public var body: some View {
        NavigationStack(path: $navigator.path) {
            content(navigator)
                .navigationDestination(for: Navigator.Path.self) { destination in
                    navigator.navigate(destination)
                }
        }
        .environmentObject(navigator)
    }
}
