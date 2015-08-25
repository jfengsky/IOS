//
//  ViewController.swift
//  swiftUISegmentControl
//
//  Created by jiang feng on 15/8/21.
//  Copyright (c) 2015年 www.ieake.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  func segmentDidchange(sender: UISegmentedControl){
    
    println(sender.selectedSegmentIndex)
    println(sender.titleForSegmentAtIndex(sender.selectedSegmentIndex))
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // 设置分段控件的标题
    var titleArray:[String] = ["标题一","标题二","标题三","标题四"]
    
    var seg = UISegmentedControl(items: titleArray)
    
    seg.frame = CGRectMake(20, 20, 320, 40)
    
    seg.selectedSegmentIndex = 0
    
    // 事件后面的冒号不能少
    seg.addTarget(self, action: "segmentDidchange:", forControlEvents: UIControlEvents.ValueChanged)
    
    self.view.addSubview(seg)
    
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

