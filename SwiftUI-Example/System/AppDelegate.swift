//
//  AppDelegate.swift
//  SwiftUI-Example
//
//  Created by James on 09/02/2023.
//

import Foundation
import UIKit

typealias NotificationPayload = [AnyHashable: Any]
typealias FetchCompletion = (UIBackgroundFetchResult) -> Void

@UIApplicationMain
final class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions
        launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        return true
    }
}
