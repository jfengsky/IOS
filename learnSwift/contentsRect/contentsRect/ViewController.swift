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
    
    let viewBounds = self.view.bounds
    let viewWidth = viewBounds.width
    let viewHeight = viewBounds.height
    
    // 使用CALayer截图图片
    let imageCropLayer = CALayer()
//    let blueLayer = CALayer()
//    blueLayer.frame = CGRectMake(100, 100, 100, 100)
//    blueLayer.backgroundColor = UIColor.blueColor().CGColor

    imageCropLayer.frame = CGRectMake(0, 0, viewWidth/2, viewHeight/2)
    imageCropLayer.contents = UIImage(named: "test.png")?.CGImage
    imageCropLayer.contentsRect = CGRectMake(0, 0, 1/2, 1/2)
//    self.view.layer.addSublayer(imageCropLayer)
//    blueLayer.mask = imageCropLayer
    self.view.layer.contentsGravity = kCAGravityResizeAspect
    self.view.layer.addSublayer(imageCropLayer)
    
    
    let imageCropLayer2 = CALayer()
    imageCropLayer2.frame = CGRectMake(viewWidth/2, 0, viewWidth/2, viewHeight/2)
    imageCropLayer2.contents = UIImage(named: "test.png")?.CGImage
    imageCropLayer2.contentsRect = CGRectMake(1/2, 0, 1/2, 1/2)
    self.view.layer.addSublayer(imageCropLayer2)
//    imageCropLayer2.opacity = 1
    
    let imageCropLayer3 = CALayer()
    imageCropLayer3.frame = CGRectMake(0, viewHeight/2, viewWidth/2, viewHeight/2)
    imageCropLayer3.contents = UIImage(named: "test.png")?.CGImage
    imageCropLayer3.contentsRect = CGRectMake(0, 1/2, 1/2, 1/2)
    self.view.layer.addSublayer(imageCropLayer3)
//    imageCropLayer3.opacity = 0.5
//
    let imageCropLayer4 = CALayer()
    imageCropLayer4.frame = CGRectMake(viewWidth/2, viewHeight/2, viewWidth/2, viewHeight/2)
    imageCropLayer4.contents = UIImage(named: "test.png")?.CGImage
    imageCropLayer4.contentsRect = CGRectMake(1/2, 1/2, 1/2, 1/2)
    self.view.layer.addSublayer(imageCropLayer4)
//    imageCropLayer4.opacity = 0.5

    
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

