//
//  Card.swift
//  Higher Lower Game
//
//  Created by Pavel Barros Quintanilla on 2019-01-25.
//  Copyright © 2019 Pavel Barros Quintanilla. All rights reserved.
//

import Foundation
import UIKit

class Card {
    
    var color : String
    var value : Int
    var name : String
    
    init(col: String, val: Int, nam: String ) {
        color = col
        value = val
        name = nam
    }
    
    
    var  image : UIImage {
        return UIImage(named: name)!
    }
    
}
    

    
    

