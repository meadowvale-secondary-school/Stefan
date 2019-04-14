//
//  ViewController.swift
//  CommonInputControls
//
//  Created by Student2562 on 2019-04-08.
//  Copyright © 2019 Student2562. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        print("Pressed")
    }
    
    @IBAction func toggleSwtich(_ sender: UISwitch) {
        if sender.isOn{
            print("Its On")
        }else{
            print("Its Off")
        }
    }

    @IBAction func sliderIsMoved(_ sender: UISlider) {
        print(sender.value)
    }
    
    @IBAction func userInput(_ sender: UITextField) {
        if let text = sender.text{
            print(text)
        }
    }
  
    @IBAction func textChanged(_ sender: UITextField) {
        if let text = sender.text{
            print(text)
        }
    }
    
}

