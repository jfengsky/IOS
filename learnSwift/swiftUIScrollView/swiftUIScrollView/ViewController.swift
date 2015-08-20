//
//  ViewController.swift
//  swiftUIScrollView
//
//  Created by jiang feng on 15/8/20.
//  Copyright (c) 2015年 www.ieake.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    var scrollView = UIScrollView(frame: CGRectMake(60, 120, 200, 200))
    scrollView.pagingEnabled = true
    scrollView.showsVerticalScrollIndicator = false
    self.view.addSubview(scrollView)
    
    var fX: CGFloat = 0.0
    for(var i = 0; i < 3; ++i){
      var view = UIView(frame: CGRectMake(fX, 0, 200, 200))
      fX += 200.0
      view.backgroundColor = UIColor.redColor()
      scrollView.addSubview(view)
    }
    scrollView.contentSize = CGSizeMake(3*200, 200)
    self.view.addSubview(scrollView)
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

