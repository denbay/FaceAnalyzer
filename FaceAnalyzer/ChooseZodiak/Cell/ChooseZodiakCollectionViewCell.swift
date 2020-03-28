//
//  ChooseZodiakCollectionViewCell.swift
//  FaceAnalyzer
//
//  Created by VIKTORIA BURNOS on 3/22/20.
//  Copyright © 2020 VB. All rights reserved.
//

import UIKit

class ChooseZodiakCollectionViewCell: UICollectionViewCell {
    
    // - UI
    
    @IBOutlet weak var chooseZodiakImageView: UIImageView!
    @IBOutlet weak var dateChooseZodiakLabel: UILabel!
    @IBOutlet weak var nameChooseZodiakLabel: UILabel!
    
    func set(zodiak: ZodiakModel) {
        chooseZodiakImageView.image = UIImage(named: zodiak.image)
        dateChooseZodiakLabel.text = zodiak.date
        nameChooseZodiakLabel.text = zodiak.zodiakName
    }
    
}


