//
//  ViewController.swift
//  swiftUISegmentedControl
//
//  Created by jiang feng on 15/8/20.
//  Copyright (c) 2015年 www.ieake.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    var segmentControl = UISegmentedControl(items: ["A", "B", "C", "D"])
    segmentControl.frame = CGRectMake(110, 120, 100, 30)
    self.view.addSubview(segmentControl)
    
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

