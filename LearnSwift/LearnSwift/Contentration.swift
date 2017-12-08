//
//  Contentration.swift
//  LearnSwift
//
//  Created by zhenglin on 2/12/2017.
//  Copyright © 2017 zhenglin. All rights reserved.
//

import Foundation

class Contrentration {
    
    var cards = [Card]()
    
    func chooseCard(at  index : Int) {
        if cards[index].isFacedUp {
            cards[index].isFacedUp = false
        } else {
            cards[index].isFacedUp = true
        }
    }
    
    init(numbersOfPairsOfCards : Int){
        for _ in 1...numbersOfPairsOfCards {
            let card = Card()
            cards += [card, card]
        }
        //TODO:shuffle the cards
        
    }
}
