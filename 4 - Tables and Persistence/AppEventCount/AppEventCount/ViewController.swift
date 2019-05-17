//
//  ViewController.swift
//  AppEventCount
//
//  Created by Student2562 on 2019-05-17.
//  Copyright © 2019 Student2562. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var didFinishLaunchingLabel: UILabel!
    var launchCount: Int = 0
    
    @IBOutlet weak var willResignLabel: UILabel!
    var willResignCount: Int = 0
    
    @IBOutlet weak var didEnterBackgroundLabel: UILabel!
    var didEnterBackgroundCount: Int = 0
    
    @IBOutlet weak var willEnterForegroundLabel: UILabel!
    var willEnterForegroundCount: Int = 0
    
    @IBOutlet weak var didBecomeActiveLabel: UILabel!
    var didBecomeActiveCount: Int = 0
    
    @IBOutlet weak var willTerminateLabel: UILabel!
    var willTerminateCount: Int = 0
    
    func updateView(){
        didFinishLaunchingLabel.text = "The app has launched \(launchCount) times"
        
        willResignLabel.text = "The app has went from inactive to active \(willResignCount) times "
        
        didEnterBackgroundLabel.text = "The app entered the background \(didEnterBackgroundCount) times"
        
        willEnterForegroundLabel.text = "The app entered the foreground \(willEnterForegroundCount) times"
        
        didBecomeActiveLabel.text = "The app became active \(didBecomeActiveCount) times"
        
        willTerminateLabel.text = "The app has terminated \(willTerminateCount) times"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

