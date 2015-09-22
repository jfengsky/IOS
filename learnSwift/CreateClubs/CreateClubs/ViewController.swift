//
//  ViewController.swift
//  生产小方块
//
//  Created by jiang feng on 15/9/22.
//  Copyright © 2015年 www.ieake.com. All rights reserved.
//

import UIKit

class Club {
  var width: Int
  var height: Int
  var originX: Int
  var originY: Int
  var id: Int
//  var backgroundColor = UIColor.redColor()
  var button: UIButton
  
  init(width:Int, height: Int, originX: Int, originY: Int, id: Int) {
    self.width = width
    self.height = height
    self.originX = originX
    self.originY = originY
    self.id = id
    self.button = UIButton(frame: CGRectMake(CGFloat(originX), CGFloat(originY), CGFloat(width), CGFloat(height)))
    self.button.backgroundColor = UIColor.grayColor()
    self.button.setTitle(String(id), forState: .Normal)
  }
}

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // 获取屏幕的宽和高
    let screemWidth  = self.view.bounds.width
    let screemHeight = self.view.bounds.height
    
    // 把屏幕分成6*8小块
//    let btnClub = UIButton()
//    btnClub.frame = CGRectMake(0, 0, screemWidth / 6, screemHeight / 8)
//    btnClub.backgroundColor = UIColor.blackColor()
//    self.view.addSubview(btnClub)
    
    var clubArray: Array<Any> = [];
    var Ystep: Int = -1
    
    // 省略最后一个方块
    
    for(var i = 0; i < 47; i++){
      let clubWidth: Int = Int(screemWidth / 6)
      let clubHeight: Int = Int(screemHeight / 8)
      let clubOriginX = Int( Int(i % 6) * clubWidth)
      if i % 6 == 0{
        Ystep = Ystep + 1
      }
      
      let clubOriginY = Int( Ystep * clubHeight)
      let tempClub = Club(width: clubWidth, height: clubHeight, originX: clubOriginX, originY: clubOriginY, id: i)
      
      clubArray.append(tempClub)
      
//      self.view.addSubview(tempClub.button)
      
    }
    
    print(clubArray)
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  // 去掉顶部状态栏
  override func prefersStatusBarHidden() -> Bool {
    return true
  }

}

