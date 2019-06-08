//
//  Money.swift
//  swift-lotto
//
//  Created by wheejuni on 08/06/2019.
//  Copyright © 2019 wheejuni. All rights reserved.
//

import Foundation

struct Money {

    private let amount: Int
    
    init(amount: Int) {
        self.amount = amount
    }
    
    func isPurchasable() -> Bool {
        return amount >= 1000
    }
    
    func countOfPurchasableLotto() -> Int {
        return self.amount / 1000
    }
}
