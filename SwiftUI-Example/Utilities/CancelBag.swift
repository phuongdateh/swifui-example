//
//  CancelBag.swift
//  SwiftUI-Example
//
//  Created by James on 09/02/2023.
//

import Combine

final class CancelBag {
    fileprivate(set) var subscriptions = Set<AnyCancellable>()
    func cancel() {
        subscriptions.removeAll()
    }
}

extension AnyCancellable {
    func store(in cancelBag: CancelBag) {
        cancelBag.subscriptions.insert(self)
    }
}

