//
//  Card Deck.swift
//  Higher Lower Game
//
//  Created by Pavel Barros Quintanilla on 2019-01-25.
//  Copyright © 2019 Pavel Barros Quintanilla. All rights reserved.
//

import Foundation

class CardDeck {
    
    private var deck = [Card]()
    private var usedDeck = [Card]()
    
    
    let card2 = Card(col: "Black", val: 2, nam: "2C")
    
    let card3 = Card(col: "Red", val: 3, nam: "3D")
    
    let card4 = Card(col: "Red", val: 4, nam: "4H")
    
    let card5 = Card(col: "Black", val: 5, nam: "5S")
    
    let card6 = Card(col: "Black", val: 6, nam: "6C")
    
    let card7 = Card(col: "Red", val: 7, nam: "7D")
    
    let card8 = Card(col: "Red", val: 8, nam: "8H")
    
    let card9 = Card(col: "Black", val: 9, nam: "9S")
    
    let card10 = Card(col: "Black", val: 10, nam: "10C")
    
    let card11 = Card(col: "Red", val: 11, nam: "JD")
    
    let card12 = Card(col: "Red", val: 12, nam: "QH")
    
    let card13 = Card(col: "Black", val: 13, nam: "KS")
    
    let card14 = Card(col: "Black", val: 14, nam: "AC")
    
    init()
    {
        deck.append(card2)
        deck.append(card3)
        deck.append(card4)
        deck.append(card5)
        deck.append(card6)
        deck.append(card7)
        deck.append(card8)
        deck.append(card9)
        deck.append(card10)
        deck.append(card11)
        deck.append(card12)
        deck.append(card13)
        deck.append(card14)
        
        deck.shuffle()
    }
    
    func getCard() -> Card {
        let card = deck[0]
        deck.remove(at: 0)
        usedDeck.append(card)
        
        return card
    }
    
    
    
    
    
    
}
