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
    let randomIndex = Int.random(in: 0...10)
    var nextNumberOnScreen: ScreenNumber!
    var currentNumberOnScreen: ScreenNumber!
    var nextNumber = 0
    
    var numberOnLabel = 0
    
    @IBOutlet weak var screenLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        //let numberOnLabel =
        currentNumberOnScreen = allNumbers.numberArray[randomIndex - 1]
        screenLabel.text = "\((currentNumberOnScreen.displayNumber))"
        nextNumberOnScreen = allNumbers.numberArray[Int.random(in: 0...10)]
        
        
        
        
        
        
        
        
    }

    @IBAction func lowerButtonPressed(_ sender: UIButton) {
        
        
        
        if nextNumberOnScreen.displayNumber < currentNumberOnScreen.displayNumber{
            
            nextLabelNumber()
            
        }
//        else {
//            
//            startOver()
//        }
        
    }
    
    @IBAction func higherButtonPressed(_ sender: UIButton) {
        
        if nextNumberOnScreen.displayNumber > currentNumberOnScreen.displayNumber {
            
            nextLabelNumber()
            
        }
            
//        else {
//            startOver()
//        }
        
    }
    
    
    
    func updateUI() {
        
    }

    
    func nextLabelNumber() {
        
        currentNumberOnScreen = nextNumberOnScreen
        screenLabel.text = "\((currentNumberOnScreen.displayNumber))"
        nextNumberOnScreen = allNumbers.numberArray[Int.random(in: 0...10)]
        
        
        
        
//        nextNumber = nextNumberOnScreen.displayNumber
//
//        screenLabel.text = "\(nextNumber)"
//
    }
    
        
    
    
    func checkAnswer() {
        
        
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


