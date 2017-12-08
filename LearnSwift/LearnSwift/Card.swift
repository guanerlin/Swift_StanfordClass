//
//  Card.swift
//  LearnSwift
//
//  Created by zhenglin on 2/12/2017.
//  Copyright © 2017 zhenglin. All rights reserved.
//

import Foundation

struct Card {
    var identifier = 0
    var isFacedUp = false
    var isMatched = false
    static var cardIdentifier = 0
    static func getUnicqIdentifier() -> Int {
        cardIdentifier += 1
        return cardIdentifier
    }
    
    init() {
        self.identifier = Card.getUnicqIdentifier()
    }
}
