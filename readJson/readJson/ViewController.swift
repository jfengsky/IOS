//
//  ViewController.swift
//  readJson
//
//  Created by jiangfeng on 15/11/3.
//  Copyright © 2015年 jiangfeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 读json文件
        
        let filePath: String = NSBundle.mainBundle().pathForResource("pwd", ofType: "json")!
        
        let tempUrl = NSURL(fileURLWithPath: filePath)
        
        let nsData: NSData = NSData(contentsOfURL: tempUrl)!
        
        let tempJson: AnyObject? = try? NSJSONSerialization.JSONObjectWithData(nsData, options: NSJSONReadingOptions.AllowFragments)
        
        var tempName = tempJson?.objectForKey("name")
        
        print(tempName!)
        
        // 生成json格式
        
        var writeData = ["name": "jfeng", "age": 1]
        
        var jsonData = try? NSJSONSerialization.dataWithJSONObject(writeData, options: NSJSONWritingOptions())
        
        var str = NSString(data: jsonData!, encoding: NSUTF8StringEncoding)
        
        print(str!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

