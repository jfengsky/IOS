//
//  ViewController.swift
//  SwiftUIButton
//
//  Created by jiang feng on 15/8/11.
//  Copyright (c) 2015年 www.ieake.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad();
        
        
        // UIButtonType.ContactAdd：前面带“+”图标按钮，默认文字颜色为蓝色，有触摸时的高亮效果
        // UIButtonType.DetailDisclosure：前面带“!”图标按钮，默认文字颜色为蓝色，有触摸时的高亮效果
        // UIButtonType.System 前面不带图标，默认文字颜色为蓝色，有触摸时的高亮效果
        // UIButtonType.Custom定制按钮，前面不带图标，默认文字颜色为白色，无触摸时的高亮效果
        
        // 创建一个按钮
        var button:UIButton = UIButton.buttonWithType(UIButtonType.ContactAdd) as! UIButton;
        
        // 快速创建一个Custom按钮
        // var button = UIButton(frame: CGRectMake(10, 150, 100, 30));
        
        // 设置按钮位置和大小
        button.frame = CGRectMake(10, 150, 100, 30);
        
        // 按钮状态设置
        button.setTitle("普通状态", forState: UIControlState.Normal);
        // button.setTitle("触摸状态", forState: UIControlState.Highlighted);
        // button.setTitle("禁用状态", forState: UIControlState.Disabled);
        
        // 按钮文字颜色设置
        button.setTitleColor(UIColor.blackColor(), forState: .Normal); // 普通状态下的文字
        // button.setTitleColor(UIColor.greenColor(), forState: .Highlighted); // 触摸状态下文字的颜色
        // button.setTitleColor(UIColor.grayColor(), forState: .Disabled); // 禁用状态下文字的颜色
        
        // 按钮文字阴影颜色设置
        button.setTitleShadowColor(UIColor.yellowColor(), forState: .Normal); // 普通状态
        
        // 绑定事件
        button.addTarget(self,action:Selector("tapped"),forControlEvents:UIControlEvents.TouchUpInside);
        func tapped(){
            println("tapped");
        }
        
        // 按钮背景颜色设置
        button.backgroundColor = UIColor.yellowColor();
        
        self.view.addSubview(button);
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

