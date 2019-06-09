//
//  LottoPrize.swift
//  swift-lotto
//
//  Created by wheejuni on 09/06/2019.
//  Copyright © 2019 wheejuni. All rights reserved.
//

import Foundation

protocol LottoPrize {
    var prizeMoney: Int {get}
    var matchingCount: Int {get}
}

enum LottoPrizeTypes: LottoPrize {
    case fifthPrize, fourthPrize, thirdPrize, secondPrize, firstPrize;
    
    var prizeMoney: Int {
        return self.getPrizeMoney()
    }
    
    var matchingCount: Int {
        return self.getMatchingCount()
    }
    
    func getPrizeMoney() -> Int {
        switch self {
        case .fifthPrize:
            return 1000
        case .fourthPrize:
            return 3000
        case .thirdPrize:
            return 15000
        case .secondPrize:
            return 2000000
        case .firstPrize:
            return 10000000
        }
    }
    
    func getMatchingCount() -> Int {
        switch self {
        case .fifthPrize:
            return 3
        case .fourthPrize:
            return 4
        case .thirdPrize:
            return 5
        case .secondPrize:
            return 6
        case .firstPrize:
            return 7
        }
    }
}
