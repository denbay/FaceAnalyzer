//
//  TabBarViewController.swift
//  FaceAnalyzer
//
//  Created by VIKTORIA BURNOS on 3/29/20.
//  Copyright © 2020 VB. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()

    }

}

// MARK: -
// MARK: - Configure

private extension TabBarViewController {
    
    func configure() {
        configureControllers()
        tabBarAppearance()
    }
    
    func tabBarAppearance() {
        tabBar.backgroundColor = UIColor(red: 91 / 255, green: 34 / 255, blue: 98 / 255, alpha: 1)
    }
    
    func configureControllers() {
        // first
        let firstViewController = UIStoryboard(storyboard: .profile).instantiateInitialViewController() as! ProfileViewController
        let firstTabBarItem = UITabBarItem()
        firstTabBarItem.image = UIImage(named: "profile_icon")
        firstTabBarItem.selectedImage = UIImage(named: "icon_profile_active")
        firstViewController.tabBarItem = firstTabBarItem
        // second
        let secondViewController = UIStoryboard(storyboard: .mainMenu).instantiateInitialViewController() as! MainMenuViewController
        let secondTabBarItem = UITabBarItem()
        secondTabBarItem.image = UIImage(named: "analyzer")
        secondTabBarItem.selectedImage = UIImage(named: "analayzer_active")
        secondViewController.tabBarItem = secondTabBarItem
        // third
        let thirdViewController = UIStoryboard(storyboard: .settings).instantiateInitialViewController() as! SettingsViewController
        let thirdTabBarItem = UITabBarItem()
        thirdTabBarItem.image = UIImage(named: "settings")
        thirdTabBarItem.selectedImage = UIImage(named: "settings_active")
        thirdViewController.tabBarItem = thirdTabBarItem
        
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [firstViewController, secondViewController, thirdViewController].map {
            let navController = UINavigationController(rootViewController: $0)
            navController.navigationBar.isTranslucent = false
            navController.navigationBar.isHidden = true
            return navController
        }
    }
}

