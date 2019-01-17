//
//  NumberBank.swift
//  Higher Lower Game
//
//  Created by Pavel Barros Quintanilla on 2019-01-15.
//  Copyright © 2019 Pavel Barros Quintanilla. All rights reserved.
//

import Foundation

class NumberBank {
    
    var numberArray = [ScreenNumber]()
    
    init() {
        
        numberArray.append(ScreenNumber(numb: 1))
        numberArray.append(ScreenNumber(numb: 2))
        numberArray.append(ScreenNumber(numb: 3))
        numberArray.append(ScreenNumber(numb: 4))
        numberArray.append(ScreenNumber(numb: 5))
        numberArray.append(ScreenNumber(numb: 6))
        numberArray.append(ScreenNumber(numb: 7))
        numberArray.append(ScreenNumber(numb: 8))
        numberArray.append(ScreenNumber(numb: 9))
        numberArray.append(ScreenNumber(numb: 10))
    }
    
}
