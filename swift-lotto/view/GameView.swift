//
//  GameView.swift
//  swift-lotto
//
//  Created by wheejuni on 09/06/2019.
//  Copyright © 2019 wheejuni. All rights reserved.
//

import Foundation

class GameView {
    private var gameService: GameService
    
    init() {
        print("구입을 원하는 금액을 입력하십시오.")
        let moneyInput = Int(readLine()!) ?? 1000
        let money = Money(amount: moneyInput)
        
        self.gameService = GameService(money: money)
    }
    
}
