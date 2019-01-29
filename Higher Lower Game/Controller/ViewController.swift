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
    
    var countdownTimer = 3
    var startTimer = Timer()
    

//    let randomCardIndex = Int.random(in: 1...4)
//    var card2 = ["2C", "2H", "2D", "2S"]
    
    @IBOutlet weak var countdownLabel: UILabel!
    @IBOutlet weak var timeRemaining: UILabel!
    @IBOutlet weak var buttonHigh: UIButton!
    @IBOutlet weak var buttonLow: UIButton!
    @IBOutlet weak var screenLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var cardImageOnScreen: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabel.layer.cornerRadius = 5.0
        buttonLow.layer.cornerRadius = 5.0
        buttonHigh.layer.cornerRadius = 5.0
//        timeRemaining.layer.cornerRadius = 25.0
        
        countdownTimer = 3
        countdownLabel.text = "\(countdownTimer)"
        
        buttonLow.isEnabled = false
        buttonHigh.isEnabled = false
        
        startTimer =  Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.startGameTimer), userInfo: nil, repeats: true)
        
        currentCard = cardDeck.getCard()
        cardImageOnScreen.image = UIImage (named: currentCard.name)
        play()
        
        
    
    }
    
    @objc func startGameTimer() {
        
        countdownTimer -= 1
        countdownLabel.text = "\(countdownTimer)"
        
        if countdownTimer == 0 {
            startTimer.invalidate()
            buttonLow.isEnabled = true
            buttonHigh.isEnabled = true
            countdownLabel.text = ""
        }
    
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
        if currentCard.value != nextCard.value {
        currentCard = nextCard
        cardImageOnScreen.image = UIImage (named: nextCard.name)
        nextCard = cardDeck.getCard()
        print("Next Card is: \(nextCard.value)")
        }
        
        if currentCard.value == nextCard.value {
            currentCard = cardDeck.getCard()
            nextCardOnScreen()
            print("new next card is: \(nextCard.value)")
        }
        
//        currentCardOnScreen = nextCardOnScreen
//        cardImageOnScreen.image = UIImage (named: nextCardOnScreen)
//        nextCardOnScreen =
//        print("next card is: \(nextCardOnScreen)")
    }
    
    func increaseScore() {
        score = score + 1
        scoreLabel.text = "Score: \(score) "
    }
    
    func resetScore() {
        score = 0
        scoreLabel.text = "Score: \(score) "
    }
    
    
    
    func checkAnswerForLower() {
        // FOR LOWER BUTTON
       
        if nextCard.value < currentCard.value {
            increaseScore()
            nextCardOnScreen()
        }

        else {
            nextCardOnScreen()
        }
        
    }
    
    func checkAnswerForHigher() {
        // FOR HIGHER BUTTON
        if nextCard.value > currentCard.value {
            increaseScore()
            nextCardOnScreen()
        }

        else{
            nextCardOnScreen()

        }
    }

    func startOver() {
        resetScore()
        play()
    }
}


