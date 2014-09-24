//
//  RootViewController.swift
//  swift_UILabel
//
//  Created by 姜峰 on 14-9-24.
//  Copyright (c) 2014年 jfeng. All rights reserved.
//

import Foundation
import UIKit

class RootViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let rect = CGRect(x: 0, y: 100, width: 320, height: 44)
        var myLabel = UILabel(frame: rect)
        myLabel.text = "mylabel text"
        
        self.view.addSubview(myLabel)
    }
}