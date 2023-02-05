//
//  TextDetailView.swift
//  SwiftUI-Example
//
//  Created by James on 03/02/2023.
//

import SwiftUI

struct TextDetailView: View {
    let name: String
    var body: some View {
        VStack {
            Text(name)
                .foregroundColor(.red)
                .font(.headline)
        }
        .padding()
    }
}

extension TextDetailView {
    struct Routing: Equatable {
        var name: String?
    }
}
