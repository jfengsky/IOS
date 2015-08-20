//
//  ViewController.swift
//  SwiftUIViewScrollDemo1
//
//  Created by jiang feng on 15/8/18.
//  Copyright (c) 2015年 www.ieake.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
        let pageWidth = 320
        let pageHeight = 2000
        
        var scrollView = UIScrollView()
        scrollView.frame = self.view.bounds
        
        scrollView.contentSize = CGSizeMake(CGFloat(pageWidth), CGFloat(pageHeight))
        
        scrollView.pagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = true
        scrollView.showsVerticalScrollIndicator = true
        scrollView.scrollsToTop = true
        
        self.view.addSubview(scrollView)
        
        
        var label1 = UILabel(frame: CGRectMake(50, 70, 240, 30))
        label1.text = "label1中的文字"
        label1.textColor = UIColor.orangeColor()
        label1.font = UIFont.systemFontOfSize(23)
        scrollView.addSubview(label1)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

