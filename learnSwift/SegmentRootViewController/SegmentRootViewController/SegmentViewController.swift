//
//  SegmentViewController.swift
//  SegmentRootViewController
//
//  Created by jiang feng on 15/8/24.
//  Copyright (c) 2015年 www.ieake.com. All rights reserved.
//

import Foundation

import UIKit

class SegmentViewController: UIViewController {
  
  func segmentDidchange(sender: UISegmentedControl){
    
    println(sender.selectedSegmentIndex)
    println(sender.titleForSegmentAtIndex(sender.selectedSegmentIndex))
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    var titleArray:[String] = ["标题一", "标题二", "标题三"]
    var seg = UISegmentedControl(items: titleArray)
    seg.frame = CGRectMake(20, 20, 320, 40)
    seg.selectedSegmentIndex = 0
    
    seg.addTarget(self, action: "segmentDidchange:", forControlEvents: UIControlEvents.ValueChanged)
    
    self.view.addSubview(seg)
  }
}