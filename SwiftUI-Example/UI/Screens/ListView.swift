//
//  ListView.swift
//  SwiftUI-Example
//
//  Created by James on 03/02/2023.
//

import SwiftUI

struct ListContentView: View {
    var items: [String] {
        let views: [ViewType] = [.text, .button]
        return views.map { $0.title }
    }

    @State private var routingState: Routing = Routing()
    @Environment(\.injected) private var injectedd: DIContainer

    private var routingBinding: Binding<Routing> {
        $routingState.dispatched(to: injectedd.appState, \.routing.listContent)
    }

    var body: some View {
        VStack(alignment: .leading) {
            List(items, id: \.hash) { item in
                NavigationLink(destination: self.textDetailView(name: item)) {
                    ItemCell(name: item)
                }
            }
        }
        .background(Color.red)
        .foregroundColor(.blue)
    }

    func textDetailView(name: String) -> some View {
        return TextDetailView(name: name)
    }
}

extension ListContentView {
    struct Routing: Equatable {
        var textDetail: String?
    }
}
