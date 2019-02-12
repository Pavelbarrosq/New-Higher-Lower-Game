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
    
    let generator = UISelectionFeedbackGenerator()
    
    var countdownTimer = 3
    var startTimer = Timer()
    
    var countdownGame = 60
    var gameTimer = Timer()
    
    var penaltySeconds = 5
    
    var recordData : String!
    

//    let randomCardIndex = Int.random(in: 1...4)
//    var card2 = ["2C", "2H", "2D", "2S"]
    
    @IBOutlet weak var countdownLabel: UILabel!
    @IBOutlet weak var timeRemaining: UILabel!
    @IBOutlet weak var buttonHigh: UIButton!
    @IBOutlet weak var buttonLow: UIButton!
    @IBOutlet weak var screenLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var cardImageOnScreen: UIImageView!
    @IBOutlet weak var endGameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        buttonLow.layer.cornerRadius = 5.0
        buttonHigh.layer.cornerRadius = 5.0
        timeRemaining.layer.cornerRadius = 25.0
        
        countdownTimer = 3
        countdownLabel.text = "\(countdownTimer)"
        
        buttonLow.isEnabled = false
        buttonHigh.isEnabled = false
        
        startTimer =  Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.startGameTimer), userInfo: nil, repeats: true)
        
        countdownGame = 60
        timeRemaining.text = "\(countdownGame)"
        
        let userDefaults = Foundation.UserDefaults.standard
        let value = userDefaults.string(forKey: "Record")
        recordData = value
        
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
            
            gameTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.game), userInfo: nil, repeats: true)
        }
    }
    
    
    @objc func game() {
        
        countdownGame -= 1
        timeRemaining.text = "\(countdownGame)"
        
        if countdownGame < 0 {
            gameTimer.invalidate()
            timeRemaining.text = "0"
            endGameLabel.text = "GAME"
            
            
            if recordData == nil {
                
                let savedString = "\(score)"
                let userDefaults = Foundation.UserDefaults.standard
                userDefaults.set(savedString, forKey: "Record")
                
            } else {
                
                let score: Int? = Int(scoreLabel.text!)
                let record: Int? = Int(recordData)
                
                if score! > record! {
                    let savedString = scoreLabel.text
                    let userDefaults = Foundation.UserDefaults.standard
                    userDefaults.set(savedString, forKey: "Record")
                }
            }
            
            buttonHigh.isEnabled = false
            buttonLow.isEnabled = false
    
            Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(ViewController.end), userInfo: nil, repeats: false)
            
        }
    }
    
    @objc func end() {
        
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "endGame") as! EndViewController
        vc.scoreData = scoreLabel.text
        self.present(vc, animated: false, completion: nil)
        
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
    }
    
    func increaseScore() {
        score = score + 1
        scoreLabel.text = String(score)
    }
    
    func resetScore() {
        score = 0
        scoreLabel.text = String(score)
    }
    
    
    
    func checkAnswerForLower() {
        // FOR LOWER BUTTON
       
        if nextCard.value < currentCard.value {
            increaseScore()
            generator.selectionChanged()
            nextCardOnScreen()
        }
        else {
            
            countdownGame -= 5
            nextCardOnScreen()
        }
    }
    
    func checkAnswerForHigher() {
        // FOR HIGHER BUTTON
        if nextCard.value > currentCard.value {
            increaseScore()
            generator.selectionChanged()
            nextCardOnScreen()
        }

        else{
            
            countdownGame -= 5
            nextCardOnScreen()
        }
    }

    func startOver() {
        resetScore()
        play()
    }
}


