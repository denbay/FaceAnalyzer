//
//  AppDelegate.swift
//  FaceAnalyzer
//
//  Created by VIKTORIA BURNOS on 3/21/20.
//  Copyright © 2020 VB. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    // - UI
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        configure()
        return true
    }

}

// MARK: -
// MARK: - Configure

private extension AppDelegate {
    
    func configure() {
        setupRootViewController()
    }
    
    func setupRootViewController() {
        //let mainVC = UIStoryboard(storyboard: .subscription).instantiateInitialViewController() as! SubscriptionViewController
        let mainVC = ViewController()
    
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let navigationController = UINavigationController(rootViewController: mainVC)
        
        if let window = window {
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        }
       
    }
    
}
