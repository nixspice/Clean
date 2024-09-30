//
//  Delegate(ext).swift
//  Common
//
//  Created by Nihad Allahveranov on 30.09.24.
//

import UIKit

extension Delegate: Connectable {
    open func application(
        _ application: Application,
        didFinishLaunchingWithOptions launchOptions: Options? = nil
    ) -> Bool {
        _ = connector.application?(
            application,
            didFinishLaunchingWithOptions: launchOptions
        )
        return true
    }
}
