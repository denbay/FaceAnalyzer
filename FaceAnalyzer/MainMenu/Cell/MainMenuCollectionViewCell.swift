//
//  MainMenuCollectionViewCell.swift
//  FaceAnalyzer
//
//  Created by VIKTORIA BURNOS on 4/30/20.
//  Copyright © 2020 VB. All rights reserved.
//

import UIKit

class MainMenuCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var mainMenuButtonImage: UIImageView!
    
    func configureImageShape() {
        mainMenuButtonImage.layer.cornerRadius = mainMenuButtonImage.frame.size.height / 2
    }
}
