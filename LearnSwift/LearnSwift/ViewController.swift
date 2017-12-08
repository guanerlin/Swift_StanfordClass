//
//  ViewController.swift
//  LearnSwift
//
//  Created by zhenglin on 1/12/2017.
//  Copyright © 2017 zhenglin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var game = Contrentration(numbersOfPairsOfCards:(cardButton.count + 1) / 2)
    
    @IBOutlet weak var flipCountLabel: UILabel!
    @IBOutlet var cardButton: [UIButton]!
    
    
    var emojiChoices = ["👻","🎃","👻","🎃"]
    var flipCount = 0 {
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButton.index(of: sender) {
            game.chooseCard(at: cardNumber)
            updateViewFromModel()
            print("cardNumer: \(cardNumber)")
        } else {
            print("chosen card is not in cardButtons")
        }
    }
    
    func updateViewFromModel() {
        for index in cardButton.indices {
            let button = cardButton[index]
            let card = game.cards[index]
            if card.isFacedUp {
                button.setTitle(emoji(for:card), for: UIControlState.normal)
                button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            } else {
                button.setTitle("", for: UIControlState.normal)
                button.backgroundColor = card.isMatched ?  #colorLiteral(red: 1, green: 0.6117379069, blue: 0, alpha: 0) : #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
            }
        }
    }
//
//    func flipCard(withEmoji emoji: String, on button: UIButton) {
//        print("flipCard withEmoji \(emoji)")
//        if button.currentTitle == emoji {
//            button.setTitle("", for: UIControlState.normal)
//            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
//        } else {
//            button.setTitle(emoji, for: UIControlState.normal)
//            button.backgroundColor =  #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
//        }
//    }
    
    func emoji(for card:Card) -> String {
        return "?"
    }
    
}

