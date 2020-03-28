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
        let storyboard = UIStoryboard(name: "Subscription", bundle: nil)
        let mainVC = storyboard.instantiateViewController(withIdentifier: "Subscription") as! SubscriptionViewController
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let navigationController = UINavigationController(rootViewController: mainVC)
        
        if let window = window {
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        }
       
    }
    
}
