//
//  ViewController.swift
//  Higher Lower Game
//
//  Created by Pavel Barros Quintanilla on 2019-01-15.
//  Copyright © 2019 Pavel Barros Quintanilla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let allNumbers = NumberBank()
    let randomIndex = Int.random(in: 0...9)
    var nextNumberOnScreen: ScreenNumber!
    var currentNumberOnScreen: ScreenNumber!
    var nextNumber = 0
    var skipNumberOnScreen = 0
    var score = 0
    
    
    var numberOnLabel = 0
    
    @IBOutlet weak var screenLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        scoreBoard()
        play()
        
        print("Next number is: \(nextNumberOnScreen.displayNumber)")
        
    }

    @IBAction func lowerButtonPressed(_ sender: UIButton) {
        checkAnswerForLower()
    }
    
    @IBAction func higherButtonPressed(_ sender: UIButton) {
        checkAnswerForHigher()
    }
    
    func play() {
        currentNumberOnScreen = allNumbers.numberArray[randomIndex]
        screenLabel.text = "\((currentNumberOnScreen.displayNumber))"
        nextNumberOnScreen = allNumbers.numberArray[Int.random(in: 0...9)]
    }
    
    func nextLabelNumber() {
        currentNumberOnScreen = nextNumberOnScreen
        screenLabel.text = "\((currentNumberOnScreen.displayNumber))"
        nextNumberOnScreen = allNumbers.numberArray[Int.random(in: 0...9)]
    }
    
    func scoreBoard() {
        
        scoreLabel.text = "\(score)"
        score = score + 1
        
        
    }
    
    func skipNumber() {
        skipNumberOnScreen = nextNumberOnScreen.displayNumber + nextNumberOnScreen.displayNumber
    }
    
    func checkAnswerForLower() {
        // FOR LOWER BUTTON
        if nextNumberOnScreen.displayNumber < currentNumberOnScreen.displayNumber {
            nextLabelNumber()
            scoreBoard()
            print("Next number is: \(nextNumberOnScreen.displayNumber)")
        }
        
        else {
            print("You loose, the next number was \(nextNumberOnScreen.displayNumber)")
            play()
            print("New Game, new number is \(currentNumberOnScreen.displayNumber)")
            
        }
    }
    
    func checkAnswerForHigher() {
        if nextNumberOnScreen.displayNumber > currentNumberOnScreen.displayNumber {
            nextLabelNumber()
            scoreBoard()
            print("Next number is: \(nextNumberOnScreen.displayNumber)")
        }
        
        else {
            print("You loose, the next number was \(nextNumberOnScreen.displayNumber)")
            play()
            print("New Game, new number is \(currentNumberOnScreen.displayNumber)")
            
        }
    }
 
    func startOver() {
        
        nextLabelNumber()
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


