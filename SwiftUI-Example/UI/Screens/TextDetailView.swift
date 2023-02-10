//
//  TextDetailView.swift
//  SwiftUI-Example
//
//  Created by James on 03/02/2023.
//

import SwiftUI

struct TextDetailView: View {
    let name: String

    let inspection = Inspection<Self>()

    var body: some View {
        self.content
            .onReceive(inspection.notice) {
                self.inspection.visit(self, $0)
            }
    }

    var content: some View {
        VStack {
            Text(name)
                .foregroundColor(.red)
                .font(.headline)
        }
    }
}

extension TextDetailView {
    struct Routing: Equatable {
        var name: String?
    }
}
