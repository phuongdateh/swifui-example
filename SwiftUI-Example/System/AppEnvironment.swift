//
//  AppEnvironment.swift
//  SwiftUI-Example
//
//  Created by James on 09/02/2023.
//

import Foundation

struct AppEnvironment {
    let container: DIContainer
    let systemEventsHandler: SystemEventsHandler
}

extension AppEnvironment {
    static func bootstrap() -> AppEnvironment {
        let appState = Store<AppState>(AppState())
        let interactors = DIContainer.Interactors()
        let diContainer = DIContainer(appState: appState, interactors: interactors)
        let systemEventsHandler = RealSystemEventsHandler(container: diContainer)

        return AppEnvironment(container: diContainer,
                              systemEventsHandler: systemEventsHandler)
    }
}
