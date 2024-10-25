//
//  ApplicationRoute.swift
//  Common
//
//  Created by Nihad Allahveranov on 03.10.24.
//

import Foundation

public enum ApplicationRoute: Routable {
    case auth(AuthorizeRoute)
    case home(HomeRoute)
}
