//
//  RegisterView.swift
//  Auth
//
//  Created by Nihad Allahveranov on 20.10.24.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject private var navigator: AuthNavigation
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Hello, Register!")
                
                Button("Go Root") {
                    navigator.popToRoot()
                }
            }
        }
        .navigationTitle("Register")
    }
}

#Preview {
    RegisterView()
}
