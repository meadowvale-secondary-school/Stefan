//
//  MiddleViewController.swift
//  OrderOfEvents
//
//  Created by Student2562 on 2019-05-07.
//  Copyright © 2019 Student2562. All rights reserved.
//

import UIKit

class MiddleViewController: UIViewController {

    @IBOutlet weak var MiddelLabel: UILabel!
    var eventNumber : Int = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //MiddelLabel.text = ""
        if let existingText = MiddelLabel.text{
            MiddelLabel.text = ("Event number \(eventNumber) was View Did Load")
            eventNumber+=1
        }
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let existingText = MiddelLabel.text{
            MiddelLabel.text = ("\(existingText)\nEvent number \(eventNumber) was View Will Appear")
            eventNumber+=1
        }
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if let existingText = MiddelLabel.text{
            MiddelLabel.text = ("\(existingText)\nEvent number \(eventNumber) was View Did Appear")
            eventNumber+=1
        }
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        if let existingText = MiddelLabel.text{
            MiddelLabel.text = ("\(existingText)\nEvent number \(eventNumber) was View Will Disappear")
            eventNumber+=1
        }
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        if let existingText = MiddelLabel.text{
            MiddelLabel.text = ("\(existingText)\nEvent number \(eventNumber) was View Did Disappear")
            eventNumber+=1
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
