//
//  ContentView.swift
//  SwiftUI-Example
//
//  Created by James on 02/02/2023.
//

import Foundation
import SwiftUI
import UIKit

enum ViewType {
    case text
    case button

    var title: String {
        switch self {
        case .text:
            return "1. Text"
        case .button:
            return "2. Button"
        }
    }
}

struct ContentView: View {
    private let container: DIContainer

    init(container: DIContainer) {
        self.container = container
    }

    var body: some View {
        ListContentView()
            .inject(container)
    }
}

extension ContentView {
    struct Routing: Equatable {
        var textDetail: String?
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(container: DIContainer(appState: Store<AppState>(AppState.preview), interactors: .stub))
    }
}
