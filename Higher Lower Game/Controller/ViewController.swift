//
//  ViewController.swift
//  Higher Lower Game
//
//  Created by Pavel Barros Quintanilla on 2019-01-15.
//  Copyright © 2019 Pavel Barros Quintanilla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var score = 0
    let cardDeck = CardDeck()
    var currentCard : Card!
    var nextCard: Card!
    

//    let randomCardIndex = Int.random(in: 1...4)
//    var card2 = ["2C", "2H", "2D", "2S"]
    
    @IBOutlet weak var screenLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var cardImageOnScreen: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        currentCard = cardDeck.getCard()
        cardImageOnScreen.image = UIImage (named: currentCard.name)
        play()
        
        
    
    }

    @IBAction func lowerButtonPressed(_ sender: UIButton) {
        checkAnswerForLower()
    }
    
    @IBAction func higherButtonPressed(_ sender: UIButton) {
        checkAnswerForHigher()
    }
    
    func play() {
        
        currentCard = cardDeck.getCard()
        cardImageOnScreen.image = UIImage (named: currentCard.name)
        
        nextCard = cardDeck.getCard()
        
//        print(currentCardOnScreen)
//        currentCardOnScreen =
//        cardImageOnScreen.image = UIImage (named: currentCardOnScreen)
//        nextCardOnScreen =
//        nextCard()
    }
    
    func nextCardOnScreen() {
        currentCard = nextCard
        cardImageOnScreen.image = UIImage (named: nextCard.name)
        nextCard = cardDeck.getCard()
        print("Next Card is: \(nextCard.value)")
        
        
//        currentCardOnScreen = nextCardOnScreen
//        cardImageOnScreen.image = UIImage (named: nextCardOnScreen)
//        nextCardOnScreen =
//        print("next card is: \(nextCardOnScreen)")
    }
    
    func increaseScore() {
        score = score + 1
        scoreLabel.text = "Score: \(score)"
    }
    
    func resetScore() {
        score = 0
        scoreLabel.text = "Score: \(score)"
    }
    
    
    
    func checkAnswerForLower() {
        // FOR LOWER BUTTON
       
        if nextCard.value < currentCard.value {
            increaseScore()
            nextCardOnScreen()
        }

        else {
            startOver()
        }
        
    }
    
    func checkAnswerForHigher() {
        // FOR HIGHER BUTTON
        if nextCard.value > currentCard.value {
            increaseScore()
            nextCardOnScreen()
        }

        else{
            startOver()

        }
    }

    func startOver() {
        resetScore()
        play()
    }
}


