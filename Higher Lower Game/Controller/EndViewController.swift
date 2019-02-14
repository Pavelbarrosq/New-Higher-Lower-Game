//
//  EndViewController.swift
//  Higher Lower Game
//
//  Created by Pavel Barros Quintanilla on 2019-02-01.
//  Copyright © 2019 Pavel Barros Quintanilla. All rights reserved.
//

import UIKit

class EndViewController: UIViewController {
    
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var scoreData: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button4.layer.cornerRadius = 5.0
        
        scoreLabel.text = scoreData
        
    }
    
    @IBAction func restartGame(_ sender: UIButton) {
        
        self.dismiss(animated: false, completion: nil)
        self.presentingViewController?.dismiss(animated: false, completion: nil)
        
    }
    
    
}
