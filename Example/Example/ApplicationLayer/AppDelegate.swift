//
//  AppDelegate.swift
//  Example
//
//  Created by Yuriy Savitskiy on 7/24/19.
//  Copyright © 2019 Yuriy Savitskiy. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let context = AppContextImpl()
    var appCoordinator: AppCoordinator!
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.startRouter()
        return true
    }
    
    private func startRouter() {
        let screenBounds = UIScreen.main.bounds
        window = UIWindow(frame: screenBounds)
        window?.makeKeyAndVisible()
        
        appCoordinator = AppCoordinator(window: window!, context: context)
        appCoordinator.start()
    }
    
}

