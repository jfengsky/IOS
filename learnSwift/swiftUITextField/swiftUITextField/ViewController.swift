//
//  ViewController.swift
//  swiftUITextField
//
//  Created by jiang feng on 15/8/20.
//  Copyright (c) 2015年 www.ieake.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    var textField = UITextField(frame: CGRectMake(60, 120, 200, 30))
    textField.backgroundColor = UIColor.lightGrayColor()
    textField.placeholder = "input here"
    self.view.addSubview(textField)
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

