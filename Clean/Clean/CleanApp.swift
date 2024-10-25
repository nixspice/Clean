//
//  CleanApp.swift
//  Clean
//
//  Created by Nihad Allahveranov on 29.09.24.
//

import SwiftUI
import Common

@main
struct CleanApp: App {
    @UIApplicationDelegateAdaptor(Delegate.self) private var delegate
    
    init() {
        self.delegate.connector = Connector([
            FirebaseConnector()
        ])
    }
    
    var body: some Scene {
        WindowGroup {
            ApplicationCoordinator.start()
        }
    }
}
