//
//  ViewController.swift
//  countdown
//
//  Created by 姜峰 on 14-9-24.
//  Copyright (c) 2014年 jfeng. All rights reserved.
//
import Foundation
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let rect = CGRect(x: 10, y: 100, width: 320, height: 40)
        var myLabel = UILabel(frame: rect)
        myLabel.text = "label Text"
        myLabel.textColor = UIColor.whiteColor()
        
        self.view.addSubview(myLabel)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

