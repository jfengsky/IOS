//
//  ViewController.swift
//  swiftUIImage
//
//  Created by jiang feng on 15/8/20.
//  Copyright (c) 2015年 www.ieake.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    var image = UIImage(named: "pic2.jpg")
    var imageView = UIImageView(frame: CGRectMake(0, 0, 300, 400))
    imageView.image = image
    self.view.addSubview(imageView)
    
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

