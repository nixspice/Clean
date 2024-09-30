//
//  Connector(ext).swift
//  Common
//
//  Created by Nihad Allahveranov on 30.09.24.
//

import UserNotifications
import UIKit

open class Connector: NSObject, Connectable {
    public let connections: [Connectable]
    public let configuration: Configuration
    
    public init(_ connections: [Connectable] = []) {
        self.configuration = .init()
        self.connections = connections
    }
    
    open func application(_ application: Application,
                          didFinishLaunchingWithOptions launchOptions: Options? = nil) -> Bool {
        connections.forEach {
            _ = $0.application?(application, didFinishLaunchingWithOptions: launchOptions)
        }
        return true
    }
    
    open func applicationDidBecomeActive(_ application: Application) {
        connections.forEach {
            $0.applicationDidBecomeActive?(application)
        }
    }
}
