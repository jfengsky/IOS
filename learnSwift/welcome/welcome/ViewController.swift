//
//  ViewController.swift
//  welcome
//
//  Created by jiang feng on 15/9/18.
//  Copyright © 2015年 www.ieake.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate{
  
  var scrollView = UIScrollView()
  
  // 翻页圆点
  var pageControl = UIPageControl()
  
  var btn = UIButton()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    pageControl.center = CGPointMake(self.view.frame.width / 2, self.view.frame.height - 30)
    
    pageControl.currentPageIndicatorTintColor = UIColor.redColor()
    pageControl.pageIndicatorTintColor = UIColor.whiteColor()
    pageControl.numberOfPages = 4
    pageControl.addTarget(self, action: "scrollViewDidEndDecelerating", forControlEvents: UIControlEvents.ValueChanged)
    
    
    
    
    scrollView.frame = self.view.bounds
    
    // scrollView宽度是4个屏幕宽度
    scrollView.contentSize = CGSizeMake(4 * self.view.frame.width, 0)
    
    
    scrollView.pagingEnabled = true
    
    // 弹簧效果
    scrollView.bounces = false
    
    // 不需要滚动条
    scrollView.showsHorizontalScrollIndicator = false
    
    scrollView.delegate = self
    // Cannot assign a value of type 'ViewController' to a value of type 'UIScrollViewDelegate?'
    self.view.addSubview(scrollView)
    
    for(var i = 0; i < 4; i++){
      let image = UIImage(named: "00\(i+1).png")
      let imageView = UIImageView(frame: CGRectMake(0, 0, self.view.frame.width, self.view.frame.height))
      imageView.image = image
      var frame = imageView.frame
      frame.origin.x = CGFloat(i) * frame.size.width
      imageView.frame = frame
      scrollView.addSubview(imageView)
//      self.view.addSubview(pageControl)
    }
    self.view.addSubview(pageControl)
  }
  
  // 页面划出事件
  func scrollViewDidEndDecelerating(scrollView: UIScrollView){
    let index = Int(scrollView.contentOffset.x / self.view.frame.size.width)

    pageControl.currentPage = index
    
    if index == 3 {
      self.btn.frame = CGRectMake(self.view.frame.width * 3, self.view.frame.height, self.view.frame.width, 50)
      self.btn.setTitle("点击开始", forState: .Normal)
      self.btn.titleLabel?.font = UIFont.systemFontOfSize(20)
      self.btn.setTitleColor(UIColor.grayColor(), forState: .Highlighted)
      self.btn.backgroundColor = UIColor.orangeColor()
      self.btn.alpha = 0
      
      self.btn.addTarget(self, action: "buttonClick:", forControlEvents: .TouchUpInside)
      
      // 按钮显示动画
      UIView.animateWithDuration(1.5, delay: 0.5, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
        self.btn.frame = CGRectMake(self.view.frame.width * 3, self.view.frame.height - 100, self.view.frame.width, 50)
        self.btn.alpha = 1
        self.scrollView.addSubview(self.btn)
        }, completion: nil)
    }
    
    
  }
  
  func buttonClick(button: UIButton) {
    let sb = UIStoryboard(name: "Main", bundle: nil)
    let second = sb.instantiateViewControllerWithIdentifier("second") 
    self.presentViewController(second, animated: true, completion: nil)
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

