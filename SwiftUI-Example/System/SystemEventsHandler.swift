//
//  SystemEventsHandler.swift
//  SwiftUI-Example
//
//  Created by James on 09/02/2023.
//

import UIKit
import Combine

protocol SystemEventsHandler {
    func sceneOpenURLContexts(_ urlContexts: Set<UIOpenURLContext>)
    func sceneDidBecomeActive()
    func sceneWillResignActive()
    func handlePushRegistration(result: Result<Data, Error>)
    func appDidReceiveRemoteNotification(payload: NotificationPayload,
                                         fetchCompletion: @escaping FetchCompletion)
}

struct RealSystemEventsHandler: SystemEventsHandler {

    let container: DIContainer
    private var cancelBag = CancelBag()

    init(container: DIContainer) {
        self.container = container
    }
    
    func sceneOpenURLContexts(_ urlContexts: Set<UIOpenURLContext>) {
        
    }
    
    func sceneDidBecomeActive() {
        container.appState[\.system.isActive] = true
    }
    
    func sceneWillResignActive() {
            
    }
    
    func handlePushRegistration(result: Result<Data, Error>) {
        
    }
    
    func appDidReceiveRemoteNotification(payload: NotificationPayload, fetchCompletion: @escaping FetchCompletion) {
        
    }
}
