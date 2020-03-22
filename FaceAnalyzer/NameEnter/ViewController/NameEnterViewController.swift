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
        editContinueButtonAction()
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
        enterNameTextField.attributedPlaceholder = NSAttributedString(string: "KARA", attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 99 / 255, green: 0 / 255, blue: 104 / 255, alpha: 1)])
    }
    
    func editContinueButtonAction() {
        if enterNameTextField.text?.isEmpty == true {
            continueButtonAction.setTitleColor(.white, for: .normal)
            continueButtonAction.backgroundColor = UIColor(red: 243 / 255, green: 129 / 255, blue: 11 / 255, alpha: 1)
            let gradientLayer = CAGradientLayer()
            gradientLayer.frame = continueButtonAction.bounds
            continueButtonAction.layer.insertSublayer(gradientLayer, at: 0)
            let backgroundColor = UIColor(red: 243 / 255, green: 129 / 255, blue: 11 / 255, alpha: 1)
            let bottomGradientColor = UIColor(red: 231 / 255, green: 181 / 255, blue: 46 / 255, alpha: 1)
            gradientLayer.colors = [backgroundColor.cgColor, bottomGradientColor.cgColor]
            gradientLayer.startPoint = CGPoint(x: 0.0, y: 1.0)
            gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
            gradientLayer.cornerRadius = 27
    }
    
  }
    
}
