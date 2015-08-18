//
//  guideViewController.swift
//  SwiftUIScrollView
//
//  Created by jiang feng on 15/8/17.
//  Copyright (c) 2015年 www.ieake.com. All rights reserved.
//

import UIKit
class GuideViewController:UIViewController, UIScrollViewDelegate {
    
    var mainScrollView = UIScrollView();
    
    scrollView.frame = self.view.bounds;
    
    scrollView.delegate = self;
    
    
}