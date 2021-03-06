//
//  SettingsTableViewCell.swift
//  FaceAnalyzer
//
//  Created by VIKTORIA BURNOS on 4/4/20.
//  Copyright © 2020 VB. All rights reserved.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {
    
    // - UI
    @IBOutlet weak var nameSettingsLabel: UILabel!
    @IBOutlet weak var smallIconImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
