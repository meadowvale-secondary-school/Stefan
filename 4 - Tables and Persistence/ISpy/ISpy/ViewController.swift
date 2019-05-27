//
//  ViewController.swift
//  ISpy
//
//  Created by Student2562 on 2019-05-27.
//  Copyright © 2019 Student2562. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var ScrollViewOutlet: UIScrollView!
    
    @IBOutlet weak var Unit3Outlet: UIImageView!
    
    func updateZoomFor(size: CGSize){
        let widthScale = size.width/Unit3Outlet.bounds.width
        let heightScale = size.height/Unit3Outlet.bounds.height
        let scale = min(widthScale,heightScale)
        ScrollViewOutlet.minimumZoomScale = scale
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ScrollViewOutlet.delegate = self
        
        func viewForZooming(in ScrollViewOutlet: UIScrollView) -> UIImageView?{
            return Unit3Outlet
        }
        
        updateZoomFor(size: view.bounds.size)
        // Do any additional setup after loading the view, typically from a nib.
    }
    

}

