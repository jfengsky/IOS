//
//  ViewController.swift
//  swiftUIWebView
//
//  Created by jiang feng on 15/8/20.
//  Copyright (c) 2015年 www.ieake.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    var webView = UIWebView(frame: self.view.bounds)
    var url = NSURL(string: "http://www.ctrip.com")
    var request = NSURLRequest(URL: url!)
    webView.loadRequest(request)
    self.view.addSubview(webView)
    
    
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

