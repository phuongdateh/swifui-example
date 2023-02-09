//
//  SceneDelegate.swift
//  SwiftUI-Example
//
//  Created by James on 09/02/2023.
//

import SwiftUI
import UIKit

final class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    var systemEventsHandler: SystemEventsHandler?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        let environment = AppEnvironment.bootstrap()
        let contentView = ContentView(container: environment.container)
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: contentView)
            self.window = window
            window.makeKeyAndVisible()
        }
        self.systemEventsHandler = environment.systemEventsHandler
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        systemEventsHandler?.sceneDidBecomeActive()
    }
}
