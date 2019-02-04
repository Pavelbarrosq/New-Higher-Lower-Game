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
    
    let cardAC = Card(col: "Black", val: 1, nam: "AC")
    let cardAD = Card(col: "Red", val: 1, nam: "AD")
    let cardAH = Card(col: "Red", val: 1, nam: "AH")
    let cardAS = Card(col: "Black", val: 1, nam: "AS")
    
    let card2C = Card(col: "Black", val: 2, nam: "2C")
    let card2D = Card(col: "Red", val: 2, nam: "2D")
    let card2H = Card(col: "Red", val: 2, nam: "2H")
    let card2S = Card(col: "Black", val: 2, nam: "2S")
    
    let card3C = Card(col: "Black", val: 3, nam: "3C")
    let card3D = Card(col: "Red", val: 3, nam: "3D")
    let card3H = Card(col: "Red", val: 3, nam: "3H")
    let card3S = Card(col: "Black", val: 3, nam: "3S")
    
    let card4C = Card(col: "Black", val: 4, nam: "4C")
    let card4D = Card(col: "Red", val: 4, nam: "4D")
    let card4H = Card(col: "Red", val: 4, nam: "4H")
    let card4S = Card(col: "Black", val: 4, nam: "4S")
    
    let card5C = Card(col: "Black", val: 5, nam: "5C")
    let card5D = Card(col: "Red", val: 5, nam: "5D")
    let card5H = Card(col: "Red", val: 5, nam: "5H")
    let card5S = Card(col: "Black", val: 5, nam: "5S")
    
    let card6C = Card(col: "Black", val: 6, nam: "6C")
    let card6D = Card(col: "Red", val: 6, nam: "6D")
    let card6H = Card(col: "Red", val: 6, nam: "6H")
    let card6S = Card(col: "Black", val: 6, nam: "6S")
    
    let card7C = Card(col: "Black", val: 7, nam: "7C")
    let card7D = Card(col: "Red", val: 7, nam: "7D")
    let card7H = Card(col: "Red", val: 7, nam: "7H")
    let card7S = Card(col: "Black", val: 7, nam: "7S")
    
    let card8C = Card(col: "Black", val: 8, nam: "8C")
    let card8D = Card(col: "Red", val: 8, nam: "8D")
    let card8H = Card(col: "Red", val: 8, nam: "8H")
    let card8S = Card(col: "Black", val: 8, nam: "8S")
    
    let card9C = Card(col: "Black", val: 9, nam: "9C")
    let card9D = Card(col: "Red", val: 9, nam: "9D")
    let card9H = Card(col: "Red", val: 9, nam: "9H")
    let card9S = Card(col: "Black", val: 9, nam: "9S")
    
    let card10C = Card(col: "Black", val: 10, nam: "10C")
    let card10D = Card(col: "Red", val: 10, nam: "10D")
    let card10H = Card(col: "Red", val: 10, nam: "10H")
    let card10S = Card(col: "Black", val: 10, nam: "10S")
    
    let cardJC = Card(col: "Black", val: 11, nam: "JC")
    let cardJD = Card(col: "Red", val: 11, nam: "JD")
    let cardJH = Card(col: "Red", val: 11, nam: "JH")
    let cardJS = Card(col: "Black", val: 11, nam: "JS")
    
    let cardQC = Card(col: "Black", val: 12, nam: "QC")
    let cardQD = Card(col: "Red", val: 12, nam: "QD")
    let cardQH = Card(col: "Red", val: 12, nam: "QH")
    let cardQS = Card(col: "Black", val: 12, nam: "QS")
    
    let cardKC = Card(col: "Black", val: 13, nam: "KC")
    let cardKD = Card(col: "Red", val: 13, nam: "KD")
    let cardKH = Card(col: "Red", val: 13, nam: "KH")
    let cardKS = Card(col: "Black", val: 13, nam: "KS")
    
    
    init()
    {
        deck.append(card2C)
        deck.append(card2D)
        deck.append(card2H)
        deck.append(card2S)
        
        deck.append(card3C)
        deck.append(card3D)
        deck.append(card3H)
        deck.append(card3S)
        
        deck.append(card4C)
        deck.append(card4D)
        deck.append(card4H)
        deck.append(card4S)
        
        deck.append(card5C)
        deck.append(card5D)
        deck.append(card5H)
        deck.append(card5S)
        
        deck.append(card6C)
        deck.append(card6D)
        deck.append(card6H)
        deck.append(card6S)
        
        deck.append(card7C)
        deck.append(card7D)
        deck.append(card7H)
        deck.append(card7S)
        
        deck.append(card8C)
        deck.append(card8D)
        deck.append(card8H)
        deck.append(card8S)
        
        deck.append(card9C)
        deck.append(card9D)
        deck.append(card9H)
        deck.append(card9S)
        
        deck.append(card10C)
        deck.append(card10D)
        deck.append(card10H)
        deck.append(card10S)
        
        deck.append(cardJC)
        deck.append(cardJD)
        deck.append(cardJH)
        deck.append(cardJS)
        
        deck.append(cardQC)
        deck.append(cardQD)
        deck.append(cardQH)
        deck.append(cardQS)
        
        deck.append(cardKC)
        deck.append(cardKD)
        deck.append(cardKH)
        deck.append(cardKS)
        
        deck.append(cardAC)
        deck.append(cardAD)
        deck.append(cardAH)
        deck.append(cardAS)
        
        deck.shuffle()
    }
    
    func getCard() -> Card {
        if deck.isEmpty {
            deck = usedDeck
            usedDeck = [Card]()
            deck.shuffle()
        }
        
        let card = deck[0]
        deck.remove(at: 0)
        usedDeck.append(card)
        
        return card
    }
    
    
    
    
    
    
}
