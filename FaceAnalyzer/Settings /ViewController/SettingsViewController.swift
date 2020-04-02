//
//  SettingsViewController.swift
//  FaceAnalyzer
//
//  Created by VIKTORIA BURNOS on 3/29/20.
//  Copyright © 2020 VB. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    // - UI
    
    @IBOutlet weak var bacgroundSettingsImageView: UIImageView!
    @IBOutlet weak var iconPremiumImageView: UIImageView!
    @IBOutlet weak var upgrade1Label: UILabel!
    @IBOutlet weak var upgrade2Label: UILabel!
    @IBOutlet weak var upgradeButton: UIButton!
    @IBOutlet weak var buttonsTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()

    }
  
}

// MARK: -
// MARK: - Configure

private extension SettingsViewController {
    
    func configure() {
        configureUpgradeButton()
        hideNavigationBar()
    }
    
    func configureUpgradeButton() {
        upgradeButton.layer.cornerRadius = 22
        upgradeButton.setTitleColor(.white, for: .normal)
        upgradeButton.backgroundColor = UIColor(red: 243 / 255, green: 129 / 255, blue: 11 / 255, alpha: 1)
        let gradientLayer = CAGradientLayer()
        upgradeButton.frame = upgradeButton.bounds
        upgradeButton.layer.insertSublayer(gradientLayer, at: 0)
        let backgroundColor = UIColor(red: 243 / 255, green: 129 / 255, blue: 11 / 255, alpha: 1)
        let bottomGradientColor = UIColor(red: 231 / 255, green: 181 / 255, blue: 46 / 255, alpha: 1)
        gradientLayer.colors = [backgroundColor.cgColor, bottomGradientColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.cornerRadius = 22
    }
    
    func hideNavigationBar() {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
}
