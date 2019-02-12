//
//  FirstViewController.swift
//  Higher Lower Game
//
//  Created by Pavel Barros Quintanilla on 2019-01-24.
//  Copyright © 2019 Pavel Barros Quintanilla. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var howToPlayButton: UIButton!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

//        label1.layer.cornerRadius = 5.0
        button.layer.cornerRadius = 5.0
        howToPlayButton.layer.cornerRadius = 5.0
        
        
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let userDefaults = Foundation.UserDefaults.standard
        let value = userDefaults.string(forKey: "Record")
        
        if (value == nil) {
            
            label2.text = "0"
            
        } else {
            
            label2.text = value
            
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
