//
//  ViewController.swift
//  Login
//
//  Created by Student2562 on 2019-05-01.
//  Copyright © 2019 Student2562. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var forgotUsernameButton: UIButton!
    
    @IBOutlet weak var usernameText: UITextField!
   
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotUsernameButton{
            segue.destination.navigationItem.title = "Forgot Username"
        
        }else if sender==forgotPasswordButton{
            segue.destination.navigationItem.title = "Forgot Password"
        
        }else{
            segue.destination.navigationItem.title = usernameText.text
        }
        
    }
    
    
    @IBAction func forgotUsernameAction(_ sender: UIButton) {
        //performSegue(withIdentifier: "LoginToLanding", sender: forgotUsernameButton)

    }
    
    @IBAction func forgotPasswordAction(_ sender: UIButton) {
        //performSegue(withIdentifier: "LoginToLanding", sender: forgotPasswordButton)
    }
    
}

