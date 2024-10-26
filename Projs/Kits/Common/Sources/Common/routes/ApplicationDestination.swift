//
//  ApplicationDestination.swift
//  Common
//
//  Created by Nihad Allahveranov on 03.10.24.
//

import Foundation

public enum ApplicationDestination: Destination {
    case auth(AuthorizeDestination)
    case home(HomeDestination)
}
