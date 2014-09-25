//
//  UIButtonsViewController.swift
//  CountDown
//
//  Created by 姜峰 on 14-9-25.
//  Copyright (c) 2014年 jfeng. All rights reserved.
//

import Foundation
import UIKit

class UIButtonsViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 创建时间显示Label
        var countLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 320, height: 100))
        
        // 设计背景颜色
        countLabel.backgroundColor = UIColor.whiteColor()
        
        countLabel.text = "0:00"
        
        self.view.addSubview(countLabel)
    }
}