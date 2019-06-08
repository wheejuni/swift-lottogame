//
//  LottoGame.swift
//  swift-lotto
//
//  Created by wheejuni on 08/06/2019.
//  Copyright © 2019 wheejuni. All rights reserved.
//

import Foundation

class LottoGame {
    private var lottos: Array<Lotto>
    
    init(money: Money) throws {
        if(money.isPurchasable()) {
            self.lottos = []
            for _ in 1...money.countOfPurchasableLotto() {
                lottos.append(Lotto())
            }
        }
        throw LottoGameError.insufficientMoneyAvailable
    }
}
