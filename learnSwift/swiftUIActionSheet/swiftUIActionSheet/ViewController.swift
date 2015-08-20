//
//  ViewController.swift
//  swiftUIActionSheet
//
//  Created by jiang feng on 15/8/20.
//  Copyright (c) 2015年 www.ieake.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    var button = UIButton.buttonWithType(UIButtonType.System) as? UIButton
    button!.frame = CGRectMake(60.0, 120.0, 200.0, 50.0)
    button!.backgroundColor = UIColor.grayColor()
    button?.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
    button!.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Highlighted)
    button?.setTitle("Show ActionSheet", forState: UIControlState.Normal)
    button?.setTitle("show ActinoSheet2", forState: UIControlState.Highlighted)
    button?.addTarget(self, action: "showActionSheet", forControlEvents: UIControlEvents.TouchUpInside)
    button!.tag = 101
    self.view.addSubview(button!)
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

