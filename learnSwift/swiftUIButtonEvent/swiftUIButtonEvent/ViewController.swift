//
//  ViewController.swift
//  swiftUIButtonEvent
//
//  Created by jiang feng on 15/8/24.
//  Copyright (c) 2015年 www.ieake.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  func buttonOnClick() {
    println("click")
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    var button:UIButton = UIButton()
    button.frame = CGRectMake(20, 20, 200, 100)
    button.setTitle("点击", forState: .Normal)
    button.setTitle("hover", forState: .Highlighted)
    button.backgroundColor = UIColor.redColor()
    
    button.addTarget(self, action: "buttonOnClick", forControlEvents: .TouchUpInside)
    
    self.view.addSubview(button)
    
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

