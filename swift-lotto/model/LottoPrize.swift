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

struct LottoNoPrize: LottoPrize {
    var prizeMoney: Int = 0
    
    var matchingCount: Int = 0
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
    
    static func getMatchingPrize(matchingCount: Int) -> LottoPrize {
        switch matchingCount {
        case 3:
            return LottoPrizeTypes.fifthPrize
        case 4:
            return LottoPrizeTypes.fourthPrize
        case 5:
            return LottoPrizeTypes.thirdPrize
        case 6:
            return LottoPrizeTypes.secondPrize
        case 7:
            return LottoPrizeTypes.firstPrize
        default:
            return LottoNoPrize()
        }
    }
}

