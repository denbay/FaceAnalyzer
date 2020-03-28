//
//  ZodiakModel.swift
//  FaceAnalyzer
//
//  Created by VIKTORIA BURNOS on 3/22/20.
//  Copyright © 2020 VB. All rights reserved.
//

import RealmSwift

class ZodiakModel: Object {
    
    @objc dynamic var zodiakName = ""
    @objc dynamic var date = ""
    @objc dynamic var image = ""
    
    
    static func aries() -> ZodiakModel {
        let zodiak = ZodiakModel()
        zodiak.zodiakName = "Aries"
        zodiak.date = "03/21 - 04/19"
        zodiak.image = "Aries"
        return zodiak
    }
    
    static func taurus() -> ZodiakModel {
        let zodiak = ZodiakModel()
        zodiak.zodiakName = "Taurus"
        zodiak.date = "04/20 - 05/20"
        zodiak.image = "Taurus"
        return zodiak
    }
    
    static func gemini() -> ZodiakModel {
        let zodiak = ZodiakModel()
        zodiak.zodiakName = "Gemini"
        zodiak.date = "05/20 - 06/20"
        zodiak.image = "Gemini"
        return zodiak
    }
    
    static func cancer() -> ZodiakModel {
        let zodiak = ZodiakModel()
        zodiak.zodiakName = "Cancer"
        zodiak.date = "06/21 - 07/22"
        zodiak.image = "Cancer"
        return zodiak
    }
    
    static func leo() -> ZodiakModel {
        let zodiak = ZodiakModel()
        zodiak.zodiakName = "Leo"
        zodiak.date = "08/22 - 07/23"
        zodiak.image = "Leo"
        return zodiak
    }
    
    static func virgo() -> ZodiakModel {
        let zodiak = ZodiakModel()
        zodiak.zodiakName = "Virgo"
        zodiak.date = "08/23 - 09/22"
        zodiak.image = "Virgo"
        return zodiak
    }
    
    static func libra() -> ZodiakModel {
        let zodiak = ZodiakModel()
        zodiak.zodiakName = "Libra"
        zodiak.date = "09/23 - 10/22"
        zodiak.image = "Libra"
        return zodiak
    }
    
    static func scorpio() -> ZodiakModel {
        let zodiak = ZodiakModel()
        zodiak.zodiakName = "Scorpio"
        zodiak.date = "10/23 - 11/21"
        zodiak.image = "Scorpio"
        return zodiak
    }
    
    static func sagittarius() -> ZodiakModel {
        let zodiak = ZodiakModel()
        zodiak.zodiakName = "Sagittarius"
        zodiak.date = "11/22 - 12/21"
        zodiak.image = "Sagittarius"
        return zodiak
    }
    
    static func capricorn() -> ZodiakModel {
        let zodiak = ZodiakModel()
        zodiak.zodiakName = "Capricorn"
        zodiak.date = "12/22 - 01/19"
        zodiak.image = "Capricorn"
        return zodiak
    }
    
    static func aquarius() -> ZodiakModel {
        let zodiak = ZodiakModel()
        zodiak.zodiakName = "Aquarius"
        zodiak.date = "01/20 - 02/18"
        zodiak.image = "Aquarius"
        return zodiak
    }
    
    static func pisces() -> ZodiakModel {
        let zodiak = ZodiakModel()
        zodiak.zodiakName = "Pisces"
        zodiak.date = "02/19 - 03/20"
        zodiak.image = "Pisces"
        return zodiak
    }

}





    

