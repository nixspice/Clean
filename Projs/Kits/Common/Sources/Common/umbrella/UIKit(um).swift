//
//  UIKit(um).swift
//  Common
//
//  Created by Nihad Allahveranov on 30.09.24.
//

import UIKit

// MARK: Protocols
public protocol Connectable: UIApplicationDelegate, UNUserNotificationCenterDelegate {}
public protocol ApplicationDelegate: UIApplicationDelegate { }

// MARK: Typealiases
public typealias Options = [UIApplication.LaunchOptionsKey: Any]
public typealias Application = UIApplication
