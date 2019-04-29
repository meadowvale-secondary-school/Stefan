//
//  ViewController.swift
//  Programatic Segues
//
//  Created by Student2562 on 2019-04-29.
//  Copyright © 2019 Student2562. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var segueSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    @IBAction func yellowButtonTapped(_ sender: Any) {
        if segueSwitch.isOn{
            performSegue(withIdentifier: "Yellow", sender: nil)
        }
    }
    
    
    @IBAction func greenButtonTapped(_ sender: Any){
        if segueSwitch.isOn{
            performSegue(withIdentifier: "Green", sender: nil)
        }
    }
    
}

