//
//  RootViewController.swift
//  swift_UIButton
//
//  Created by 姜峰 on 14-9-24.
//  Copyright (c) 2014年 jfeng. All rights reserved.
//

import Foundation
import UIKit

class RootViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var myButton = UIButton(frame: CGRect(x: 0, y: 100, width: 320, height: 40))
        myButton.backgroundColor = UIColor.blueColor()
        myButton.setTitle("click", forState:.Normal)
        
        myButton.addTarget(self, action: "clickMe:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(myButton)
    }
    
    func clickMe(sender: UIButton){
        println("click")
    }
}