//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Adwait Barmase on 24/04/24.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .controlSize(.large)
            .tint(.brandPrimary)
    }
}

//extension View {
//    func standardButtonStyle() -> some View {
//        self.modifier(standardButtonStyle())
//    }
//}
