//
//  CardConverter.swift
//  Higher Lower Game
//
//  Created by Pavel Barros Quintanilla on 2019-01-22.
//  Copyright © 2019 Pavel Barros Quintanilla. All rights reserved.
//

import Foundation

class CardConverter {
    
    
    
    func convertCard(numberInArray: [Int]) -> String {
        
        
        
        switch (numberInArray) {
        case [2]:
            return "2C"
            
        case [3]:
            return "3H"
            
        case [4]:
            return "4S"
            
        case [5]:
            return "5D"
            
        case [6]:
            return "6C"
            
        case [7]:
            return "7H"
            
        case [8]:
            return "8S"
            
        case [9]:
            return "9D"
            
        case [10]:
            return "10C"
            
        case [11]:
            return "JH"
            
        case [12]:
            return "QS"
            
        case [13]:
            return "KD"
            
        case [14]:
            return "AH"
            
        default:
            return "Something"
        }
        
    }
    
}
