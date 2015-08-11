//
//  ViewController.swift
//  SLabel
//
//  Created by jiang feng on 15/8/11.
//  Copyright (c) 2015年 www.ieake.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad();
        
        // 设置label位置和大小
        let textLabel = UILabel(frame:CGRectMake(0, 30, 300, 30));
        
        
        // 设置文本
        textLabel.text = "测试label";
        
        // 设置背景颜色
        var redColor = UIColor(red:1.0,green:0,blue:0,alpha:1.0);
        textLabel.backgroundColor = redColor;
        
        // 设置文本对其方式
        textLabel.textAlignment = NSTextAlignment.Center;
        
        // 设置字体颜色
        textLabel.textColor = UIColor.blueColor();
        
        // 设置字体和大小
        textLabel.font = UIFont(name:"Thonburi",size:30);
        
        let Color1 = UIColor(red:255,green:255,blue:0,alpha:1);
        
        
        
        self.view.addSubview(textLabel)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

