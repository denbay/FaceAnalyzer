//
//  SubscriptionIAPManager.swift
//  FaceAnalyzer
//
//  Created by VIKTORIA BURNOS on 3/29/20.
//  Copyright © 2020 VB. All rights reserved.
//

import UIKit
import SwiftyStoreKit
import StoreKit

enum RegisteredPurchase: String {
    case autoRenewableWeekly
}

class SubscriptionIAPManager {
    
    fileprivate unowned let viewController: SubscriptionViewController
    
    init(viewController: SubscriptionViewController) {
        self.viewController = viewController
        
    }
    
}


