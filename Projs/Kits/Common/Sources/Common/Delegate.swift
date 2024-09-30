//
//  Delegate.swift
//  Common
//
//  Created by Nihad Allahveranov on 30.09.24.
//

import UIKit

@MainActor open class Delegate: NSObject {
    private var _connector: Connectable = Connector()
    
    open var connector: Connectable {
        get {
            _connector
        }
        set {
            _connector = newValue
        }
    }
}
