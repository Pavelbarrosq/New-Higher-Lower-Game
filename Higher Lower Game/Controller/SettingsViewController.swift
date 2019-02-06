//
//  SettingsViewController.swift
//  Higher Lower Game
//
//  Created by Pavel Barros Quintanilla on 2019-02-06.
//  Copyright © 2019 Pavel Barros Quintanilla. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var goBackButton: UIButton!
    @IBOutlet weak var background: UIImageView!
    let backgrounds = Backgounds()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func goBackButton(_ sender: UIButton) {

    self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func changeThemeGray(_ sender: UIButton) {
        background.image = UIImage (named: backgrounds.backgroundArray[1])
    }
    
    @IBAction func changeThemeBlue(_ sender: UIButton) {
        background.image = UIImage (named: backgrounds.backgroundArray[0])
    }
    
}
