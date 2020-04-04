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
    
    // - Data
    
    private var name = ["Terms of service","Privacy policy","Version","Notifications"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()

    }
  
}

// MARK: -
// MARK: - DataSource

extension SettingsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingsTableViewCell", for: indexPath) as! SettingsTableViewCell
        cell.nameSettingsLabel?.text = self.name[indexPath.row]
        //cell.accessoryType = .disclosureIndicator
        return cell
    }
}

extension SettingsViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40.5
    }
    
}

// MARK: -
// MARK: - Configure

private extension SettingsViewController {
    
    func configure() {
        configureUpgradeButton()
        hideNavigationBar()
        configureTableView()
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
    
    func configureTableView() {
        buttonsTableView.dataSource = self
        buttonsTableView.delegate = self
    }
}
