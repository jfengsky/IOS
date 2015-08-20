//
//  ViewController.swift
//  swiftUIProgressView
//
//  Created by jiang feng on 15/8/20.
//  Copyright (c) 2015年 www.ieake.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    var progressView = UIProgressView(progressViewStyle: UIProgressViewStyle.Default)
    progressView.frame = CGRectMake(10.0, 120.0, 300.0, 30.0)
    progressView.setProgress(0.8, animated: true)
    self.view.addSubview(progressView)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

