//
//  RootViewModifier.swift
//  SwiftUI-Example
//
//  Created by James on 03/02/2023.
//

import Combine
import SwiftUI

struct RootViewAppearance: ViewModifier {
    @Environment(\.injected) private var injected: DIContainer
    @State private var isActive: Bool = false
    internal let inspection = Inspection<Self>()

    func body(content: Content) -> some View {
        content
            .blur(radius: isActive ? 0 : 10)
            .onReceive(stateUpdate) { self.isActive = $0 }
            .onReceive(inspection.notice) {
                self.inspection.visit(self, $0)
            }
    }

    private var stateUpdate: AnyPublisher<Bool, Never> {
        injected.appState.updates(for: \.system.isActive)
    }
}
