//
//  ContentManager.swift
//  FaceAnalyzer
//
//  Created by VIKTORIA BURNOS on 3/25/20.
//  Copyright © 2020 VB. All rights reserved.
//

import UIKit

class ContentManager {
    
    // - Manager
    
    private let dataBaseManager = DataBaseManager()

    func configure() {
        if dataBaseManager.zodiaks.count != 0 { return }
        let aries = ZodiakModel.aries()
        let taurus = ZodiakModel.taurus()
        let gemini = ZodiakModel.gemini()
        let cancer = ZodiakModel.cancer()
        let leo = ZodiakModel.leo()
        let virgo = ZodiakModel.virgo()
        let libra = ZodiakModel.libra()
        let scorpio = ZodiakModel.scorpio()
        let sagittarius = ZodiakModel.sagittarius()
        let capricorn = ZodiakModel.capricorn()
        let aquarius = ZodiakModel.aquarius()
        let pisces = ZodiakModel.pisces()
        dataBaseManager.save(zodiaks: zodiaks)

    }

}

// MARK: -
// MARK: - Save

extension ContentManager {
    
    func save(zodiak: ZodiakModel) {
        dataBaseManager.save(zodiaks: zodiaks)
    }
    
}

// MARK: -
// MARK: - Get

extension ContentManager {
    
    var zodiaks: [ZodiakModel] {
        return dataBaseManager.zodiaks
    }
}

