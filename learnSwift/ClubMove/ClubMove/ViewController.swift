//
//  ViewController.swift
//  ClubMove
//
//  Created by jiang feng on 15/9/22.
//  Copyright © 2015年 www.ieake.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
  
  var clubBtn = UIButton()
  
  override func viewDidLoad() {
    super.viewDidLoad()

    clubBtn.frame = CGRectMake(0, 0, 80, 80)
    clubBtn.backgroundColor = UIColor.grayColor()
    clubBtn.setTitle("click", forState: .Normal)
    
    self.view.addSubview(clubBtn)
    
    clubBtn.addTarget(self, action: "btnClick:", forControlEvents: .TouchUpInside)
  }

  func btnClick(button: UIButton) {
    UIView.animateWithDuration(0.2, delay: 0, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
      self.clubBtn.transform = CGAffineTransformMakeTranslation(0, 80)
      }) { (Bool) -> Void in
        print("运动结束")
    }
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  // 隐藏顶部状态栏
  override func prefersStatusBarHidden() -> Bool {
    return true
  }

}

