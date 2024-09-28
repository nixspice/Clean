//
//  AuthView.swift
//  Auth
//
//  Created by Nihad Allahveranov on 29.09.24.
//

import SwiftUI

public struct AuthView: View {    
    let model: Model
    
    public init(
        _ model: Model
    ) {
        self.model = model
    }
    
    public var body: some View {
        Text(
            "Hello, Auth! \(model.id) \(model.core.id) \(model.common.id) \(model.design.id)"
        )
    }
}

#Preview {
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
