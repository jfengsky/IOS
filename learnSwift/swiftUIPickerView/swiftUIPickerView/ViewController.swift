//
//  ViewController.swift
//  swiftUIPickerView
//
//  Created by jiang feng on 15/8/20.
//  Copyright (c) 2015年 www.ieake.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    var books: NSArray = 
    
    var pickerView = UIPickerView(frame: CGRectMake(10.0, 120.0, 300.0, 200.0))
    pickerView.delegate = self
    pickerView.dataSource = self
    self.view.addSubview(pickerView)
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

