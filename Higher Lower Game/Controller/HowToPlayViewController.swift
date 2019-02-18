//
//  HowToPlayViewController.swift
//  Higher Lower Game
//
//  Created by Pavel Barros Quintanilla on 2019-02-06.
//  Copyright © 2019 Pavel Barros Quintanilla. All rights reserved.
//

import UIKit

class HowToPlayViewController: UIViewController {
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var howToPlay: UITextView!
    @IBOutlet weak var howToPlay2: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.howToPlay.text = NSLocalizedString("textFieldKey", comment: " ")
        howToPlay.isEditable = false
        self.howToPlay2.text = NSLocalizedString("textFieldKey2", comment: " ")
        howToPlay2.isEditable = false
        
        
        button1.layer.cornerRadius = 5.0
        
    
        
        
        
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    @IBAction func goBackButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
