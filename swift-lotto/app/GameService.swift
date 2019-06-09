//
//  GameService.swift
//  swift-lotto
//
//  Created by wheejuni on 09/06/2019.
//  Copyright © 2019 wheejuni. All rights reserved.
//

import Foundation

class GameService {
    private var userLottos: LottoGame?
    private var computerLotto: Lotto
    
    init(money: Money) {
        self.computerLotto = Lotto()
        do {
            let generatedGame = try LottoGame(money: money)
            self.userLottos = generatedGame
        } catch LottoGameError.insufficientMoneyAvailable {
            print("no money left for lotto game!")
            return
        } catch {
            print("other error")
            return
        }
        self.userLottos = nil
    }
    
    func doPlay() {
        
    }
}
