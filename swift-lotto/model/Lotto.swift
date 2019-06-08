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
    
    init() {
        self.numbers = []
        for _ in 1...6 {
            self.numbers.append(Int.random(in: 1...45))
        }
    }
    
}
