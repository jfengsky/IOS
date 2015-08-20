//
//  ViewController.swift
//  swiftUIActivityIndicatorView
//
//  Created by jiang feng on 15/8/20.
//  Copyright (c) 2015年 www.ieake.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    var activity = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.Gray)
    activity.frame = CGRectMake(140.0, 120.0, 40.0, 40.0)
    activity.startAnimating()
    self.view.addSubview(activity)
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

