//
//  ApplicationCoordinator.swift
//  Clean
//
//  Created by Nihad Allahveranov on 03.10.24.
//

import Auth
import Common
import SwiftUI

public class ApplicationCoordinator: Coordinator<ApplicationRoute> {
    public override init(_ type: ApplicationRoute) {
        super.init(type)
    }
    
    public override func view() -> any View {
        switch type {
        case let .auth(route):
            switch route {
            default:
                AuthView(AuthView.mock)
            }
        }
    }
}
