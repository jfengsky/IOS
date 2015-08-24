//
//  ViewController.swift
//  swiftUISlideEvent
//
//  Created by jiang feng on 15/8/24.
//  Copyright (c) 2015年 www.ieake.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  func slideScroll(sender: UISlider){
    println(sender.value)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    var slide = UISlider()
    slide.frame = CGRectMake(20, 20, 320, 100)
    
    
    slide.addTarget(self, action: "slideScroll:", forControlEvents: UIControlEvents.ValueChanged)
    
    self.view.addSubview(slide)
    
    
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

