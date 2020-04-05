//
//  ViewController.swift
//  FaceAnalyzer
//
//  Created by VIKTORIA BURNOS on 3/21/20.
//  Copyright © 2020 VB. All rights reserved.
//

import UIKit
import SwiftyGif

class ViewController: UIViewController {
    
    let logoAnimationView = LogoAnimationView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(logoAnimationView)
        logoAnimationView.pinEdgesToSuperView()
        logoAnimationView.logoGifImageView.delegate = self
        
        func gifDidStop(sender: UIImageView) {
            logoAnimationView.isHidden = true
            let nextVC = UIStoryboard(storyboard: .nameEnter).instantiateInitialViewController() as! NameEnterViewController
            navigationController?.pushViewController(nextVC, animated: true)
        
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        logoAnimationView.logoGifImageView.startAnimatingGif()
    }
    
}

extension ViewController: SwiftyGifDelegate {
    
    func gifDidStop(sender: UIImageView) {
        logoAnimationView.isHidden = true
        let nextVC = UIStoryboard(storyboard: .nameEnter).instantiateInitialViewController() as! NameEnterViewController
        navigationController?.pushViewController(nextVC, animated: true)
    
    }
}

