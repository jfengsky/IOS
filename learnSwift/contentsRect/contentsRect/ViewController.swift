//
//  ViewController.swift
//  contentsRect
//
//  Created by jiang feng on 15/9/30.
//  Copyright © 2015年 www.ieake.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    /*
     * 在场景中显示一个蓝色方块
     */
    
    // UIView实现方法
//    let blueView = UIView(frame: CGRectMake(100, 100, 100, 100))
//    blueView.backgroundColor = UIColor.blueColor()
//    self.view.addSubview(blueView)
    
      // CALayer实现方法
//    let blueLayer = CALayer()
//    blueLayer.frame = CGRectMake(100, 100, 100, 100)
//    blueLayer.backgroundColor = UIColor.blueColor().CGColor
//    self.view.layer.addSublayer(blueLayer)
    
    // 使用CALayer截图图片
    let imageCropLayer = CALayer()
//    let blueLayer = CALayer()
//    blueLayer.frame = CGRectMake(100, 100, 100, 100)
//    blueLayer.backgroundColor = UIColor.blueColor().CGColor

    imageCropLayer.frame = CGRectMake(0, 0, 100, 100)
    imageCropLayer.contents = UIImage(named: "test.png")?.CGImage
    imageCropLayer.contentsRect = CGRectMake(0, 0, 1, 0.5)
//    self.view.layer.addSublayer(imageCropLayer)
//    blueLayer.mask = imageCropLayer
    self.view.layer.addSublayer(imageCropLayer)
    
    let imageCropLayer2 = CALayer()
    imageCropLayer2.frame = CGRectMake(0, 101, 100, 100)
    imageCropLayer2.contents = UIImage(named: "test.png")?.CGImage
    imageCropLayer2.contentsRect = CGRectMake(0, 0.5, 1, 0.5)
    self.view.layer.addSublayer(imageCropLayer2)
    imageCropLayer2.opacity = 0.5

    
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

