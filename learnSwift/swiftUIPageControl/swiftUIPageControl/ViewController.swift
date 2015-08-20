//
//  ViewController.swift
//  swiftUIPageControl
//
//  Created by jiang feng on 15/8/20.
//  Copyright (c) 2015年 www.ieake.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    var pageControl = UIPageControl(frame: CGRectMake(60, 120, 200, 200))
    pageControl.numberOfPages = 5
    pageControl.currentPageIndicatorTintColor = UIColor.blackColor()
    pageControl.pageIndicatorTintColor = UIColor.redColor()
    self.view.addSubview(pageControl)
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

