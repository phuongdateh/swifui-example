//
//  AppState.swift
//  SwiftUI-Example
//
//  Created by James on 02/02/2023.
//

import SwiftUI
import Combine

struct AppState: Equatable {
    var routing = ViewRouting()
    var system = System()
}

extension AppState {
    struct ViewRouting: Equatable {
        var content = ContentView.Routing()
        var listContent = ListContentView.Routing()
        var textDetail = TextDetailView.Routing()
    }
}

extension AppState {
    struct System: Equatable {
        var isActive: Bool = false
        var keyboardHeight: CGFloat = 0
    }
}
