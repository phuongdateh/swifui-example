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
    var body: some View {
        ListContentView()
    }
}

extension ContentView {
    struct Routing: Equatable {
        var textDetail: String?
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
