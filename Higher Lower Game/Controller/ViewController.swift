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
    let cardConverter = CardConverter()
    var randomIndex1 = Int.random(in: 2...14)
    var randomIndex2 = Int.random(in: 2...14)
    var currentCardOnScreen : String = ""
    var nextCardOnScreen : String = ""
    var numberInArray : Int = 0
    var allCards = [Int]()
//    let randomCardIndex = Int.random(in: 1...4)
//    var card2 = ["2C", "2H", "2D", "2S"]
    
    @IBOutlet weak var screenLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var cardImageOnScreen: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        play()
        
    }

    @IBAction func lowerButtonPressed(_ sender: UIButton) {
        checkAnswerForLower()
    }
    
    @IBAction func higherButtonPressed(_ sender: UIButton) {
        checkAnswerForHigher()
    }
    
    func play() {
        print(currentCardOnScreen)
        currentCardOnScreen = cardConverter.convertCard(numberInArray: [Int.random(in: 2...14)])
        cardImageOnScreen.image = UIImage (named: currentCardOnScreen)
        nextCardOnScreen = cardConverter.convertCard(numberInArray: [Int.random(in: 2...14)])
        nextCard()
    }
    
    func nextCard() {
        currentCardOnScreen = nextCardOnScreen
        cardImageOnScreen.image = UIImage (named: nextCardOnScreen)
        nextCardOnScreen = cardConverter.convertCard(numberInArray: [Int.random(in: 2...14)])
        print("next card is: \(nextCardOnScreen)")
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
        if nextCardOnScreen < currentCardOnScreen {
            nextCard()
            increaseScore()
        }
            
            //        else if currentCardOnScreen == nextCardOnScreen {
            //            currentCardOnScreen = cardConverter.convertCard(numberInArray: [randomIndex1])
            //            screenLabel.image = UIImage (named: currentCardOnScreen)
            //
            //        }
            
        else {
            resetScore()
            nextCard()
        }
        
    }
    
    func checkAnswerForHigher() {
        // FOR HIGHER BUTTON
        if nextCardOnScreen > currentCardOnScreen {
            nextCard()
            increaseScore()
        }
            
            //        else if currentCardOnScreen == nextCardOnScreen {
            //            currentCardOnScreen = cardConverter.convertCard(numberInArray: [randomIndex1])
            //            screenLabel.image = UIImage (named: currentCardOnScreen)
            //
            //        }
            
        else {
            
            resetScore()
            nextCard()
            
        }
    }
 
    func startOver() {
        resetScore()
        play()
    }
}

//    func currentNumber() {
//
//        screenLabel.text = "\(currentNumberOnScreen)"
//
//        //screenLabel.text = "\(currentNumberOnScreen)"
//
//    }

//        if numberOnLabel < nextNumberOnScreen{
//
//            print("Lower")
//        }
//        if numberOnLabel > nextNumberOnScreen {
//
//            print("Higher")
//        }


