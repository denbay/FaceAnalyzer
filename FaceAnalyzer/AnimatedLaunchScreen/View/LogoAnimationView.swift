//
//  LogoAnimationView.swift
//  FaceAnalyzer
//
//  Created by VIKTORIA BURNOS on 3/21/20.
//  Copyright © 2020 VB. All rights reserved.
//

import UIKit
import SwiftyGif
import DeviceKit

class LogoAnimationView: UIView {
    
    // - UI
    var logoGifImageView: UIImageView!
    var logoAnimationView = LogoAnimationView()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configure()
    }
   
}

// MARK:
// MARK: - Configure

extension LogoAnimationView {
    
    func configure() {
        configureConstraints()
        configureGifSize()
        addSubview()
    }
    
    func configureConstraints() {
        logoGifImageView.translatesAutoresizingMaskIntoConstraints = false
        logoGifImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        logoGifImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        logoGifImageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        logoGifImageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    }
    
    func configureGifSize() {
        var gifName = ""
        let groupOfDevices: [Device] = [.iPhone6, .iPhone6Plus, .iPhone6s, .iPhone6sPlus, .simulator(.iPhone8), .iPhone4, .iPhone5, .iPhone7, .iPhone7Plus, .iPhoneSE, .iPhone4s, .iPhone5c, .iPhone5s, .iPhone8Plus, .iPhone8]
        //let _: [Device] = [.simulator(.iPhone11), .iPhone11, .iPhone11Pro, .iPhone11ProMax, .iPhoneX, .iPhoneXR, .iPhoneXS, .iPhoneXSMax]

        let device = Device.current
         
        if device.isOneOf(groupOfDevices) {
            gifName = "logo.gif"
        } else {
            gifName = "logo1.gif"
        }

        guard let gifImage = try? UIImage(gifName: gifName) else { return }
        logoGifImageView = UIImageView(gifImage: gifImage, loopCount: 1)
    }
    
    func addSubview() {
        addSubview(logoGifImageView)
    }
    
}
