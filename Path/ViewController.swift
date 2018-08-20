//
//  ViewController.swift
//  Path
//
//  Created by Snoopy on 20/08/2018.
//  Copyright © 2018 EMANET. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var vueBezier: Bezier!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        vueBezier = Bezier(frame: CGRect(x: view.frame.width / 2 - 150, y: view.frame.height / 2 - 150, width: 300, height: 300))
        view.addSubview(vueBezier)
        
    }



}

