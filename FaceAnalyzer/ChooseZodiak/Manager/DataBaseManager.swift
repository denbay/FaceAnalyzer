//
//  DataBaseManager.swift
//  FaceAnalyzer
//
//  Created by VIKTORIA BURNOS on 3/25/20.
//  Copyright © 2020 VB. All rights reserved.
//

import RealmSwift

class DataBaseManager: NSObject {
    
    // - Realm
    
    let realm = try! Realm()

}

// MARK: -
// MARK: - Get

extension DataBaseManager {
    
    var zodiaks: [ZodiakModel] {
        let objects = realm.objects(ZodiakModel.self)
        return Array(objects)
    }

}

// MARK: -
// MARK: - Save

extension DataBaseManager {
    
    func save(zodiaks: [ZodiakModel]) {
        try? realm.write { [weak self] in
            self?.realm.add(zodiaks, update: .all)
        }
    }
}
