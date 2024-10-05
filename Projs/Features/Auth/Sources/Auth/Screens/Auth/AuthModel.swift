//
//  AuthModel.swift
//  Auth
//
//  Created by Nihad Allahveranov on 29.09.24.
//

import Core
import Common
import Design

extension AuthView {
    public struct Model {
        let id: Int
        let core: Core
        let common: Common
        let design: Design
        
        public init(id: Int, core: Core, common: Common, design: Design) {
            self.id = id
            self.core = core
            self.common = common
            self.design = design
        }
    }
    
    public static let mock: Model = .init(
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
}
