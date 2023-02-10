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

    let inspection = Inspection<Self>()

    private var routingBinding: Binding<Routing> {
        $routingState.dispatched(to: injectedd.appState, \.routing.listContent)
    }

    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack {
                self.content
                    .navigationTitle("Contents")
            }
            .onReceive(inspection.notice) { self.inspection.visit(self, $0) }
        } else {
            NavigationView {
                self.content
                    .navigationTitle("Contents")
            }
        }
    }

    @ViewBuilder private var content: some View {
        GeometryReader { geometry in
            VStack(alignment: .leading) {
                List(items, id: \.hash) { item in
                    NavigationLink(
                        destination: self.textDetailView(name: item),
                        tag: item,
                        selection: self.routingBinding.textDetail) {
                            ItemCell(name: item)
                        }
                        .id(items.count)
                }
            }
            .background(Color.red)
            .foregroundColor(.black)
        }
    }

    func textDetailView(name: String) -> some View {
        return TextDetailView(name: name)
            .inject(injectedd)
    }
}

extension ListContentView {
    struct Routing: Equatable {
        var textDetail: String?
    }
}
