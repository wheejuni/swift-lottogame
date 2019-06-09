//
//  Lotto.swift
//  swift-lotto
//
//  Created by wheejuni on 08/06/2019.
//  Copyright © 2019 wheejuni. All rights reserved.
//

import Foundation

struct Lotto {
    
    private var numbers: Array<Int>
    private var type: LottoType
    
    init() {
        self.numbers = []
        self.type = LottoType.computerLotto
        for _ in 1...6 {
            self.numbers.append(Int.random(in: 1...45))
        }
    }
    
    init(userInput: String) throws {
        self.numbers = []
        self.type = LottoType.userLotto
        
        let splittedInput = userInput.components(separatedBy: " ")
        
        for input in splittedInput {
            if let inputNumber = Int(input) {
                self.numbers.append(inputNumber)
                return
            }
            throw LottoGameError.notANumberInput
        }
    }
    
    func containsNumber(number: Int) -> Bool {
        return self.numbers.contains(number)
    }
    
    static func ==(user: Lotto, comparison: Lotto) -> Int {
        var matchingCount = 0
        
        for lottoNumber in user.numbers {
            if(comparison.containsNumber(number: lottoNumber)) {
                matchingCount += 1
            }
        }
        return matchingCount
    }
}
