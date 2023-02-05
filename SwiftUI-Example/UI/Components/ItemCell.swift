//
//  ItemCell.swift
//  SwiftUI-Example
//
//  Created by James on 03/02/2023.
//

import SwiftUI

struct ItemCell: View {
    let name: String

    var body: some View {
        VStack(alignment: .leading) {
            Text(name)
                .font(.headline)
        }
        .padding()
        .frame(maxWidth: .infinity)
    }
}
