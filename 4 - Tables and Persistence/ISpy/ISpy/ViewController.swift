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
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView?{
        return Unit3Outlet
    }
    
    func updateZoomFor(size: CGSize){
        let widthScale = size.width/Unit3Outlet.bounds.width
        let heightScale = size.height/Unit3Outlet.bounds.height
        let scale = min(widthScale,heightScale)
        ScrollViewOutlet.minimumZoomScale = scale
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ScrollViewOutlet.delegate = self
        updateZoomFor(size: view.bounds.size)
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    

}

