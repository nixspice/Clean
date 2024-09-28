//
//  CleanApp.swift
//  Clean
//
//  Created by Nihad Allahveranov on 29.09.24.
//

import SwiftUI
import Auth

@main
struct CleanApp: App {
    var body: some Scene {
        WindowGroup {
            AuthView(
                .init(
                    id: 0,
                    core: .init(
                        id: 1
                    ),
                    common: .init(
                        id: 2
                    ),
                    design: .init(
                        id: 3
                    )
                )
            )
        }
    }
}
