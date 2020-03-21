//
//  NameEnterViewController.swift
//  FaceAnalyzer
//
//  Created by VIKTORIA BURNOS on 3/21/20.
//  Copyright © 2020 VB. All rights reserved.
//

import UIKit

class NameEnterViewController: UIViewController {
    
    // - UI

    @IBOutlet weak var continueButtonAction: UIButton!
    @IBOutlet weak var aimImage: UIImageView!
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var writeNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
}

private extension NameEnterViewController {
    
    func configure() {
        hideNavigationBar()
        configureContinueButtonAction()
        configureEnterNameTextField()
    }
    
    func hideNavigationBar() {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    func configureContinueButtonAction() {
        continueButtonAction.layer.cornerRadius = 27
        continueButtonAction.layer.borderWidth = 1
        continueButtonAction.layer.borderColor = UIColor(red: 146 / 255, green: 88 / 255, blue: 154 / 255, alpha: 1).cgColor
        
    }
    
    func configureEnterNameTextField() {
        enterNameTextField.becomeFirstResponder()
    }
    
}
