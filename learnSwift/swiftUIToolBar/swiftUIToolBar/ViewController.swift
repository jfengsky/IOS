//
//  ViewController.swift
//  swiftUIToolBar
//
//  Created by jiang feng on 15/8/20.
//  Copyright (c) 2015年 www.ieake.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    var toolBar = UIToolbar(frame: CGRectMake(60.0, 120.0, 200.0, 30.0))
    var flexibleSpace = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.FlexibleSpace, target: nil, action: nil)
    var barBtnItemA = UIBarButtonItem(title: "A", style: UIBarButtonItemStyle.Plain, target: nil, action: nil)
    var barBtnItemB = UIBarButtonItem(title: "B", style: UIBarButtonItemStyle.Plain, target: nil, action: nil)
    var barBtnItemC = UIBarButtonItem(title: "C", style: UIBarButtonItemStyle.Plain, target: nil, action: nil)
    var barBtnItemD = UIBarButtonItem(title: "D", style: UIBarButtonItemStyle.Plain, target: nil, action: nil)
    
    toolBar.items = [flexibleSpace, barBtnItemA, flexibleSpace, barBtnItemB, flexibleSpace, barBtnItemC, flexibleSpace, barBtnItemD, flexibleSpace]
    self.view.addSubview(toolBar)
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

