//
//  ViewController.swift
//  MoveClubDemo
//
//  Created by jiang feng on 15/9/23.
//  Copyright © 2015年 www.ieake.com. All rights reserved.
//

import UIKit

//  方块对象,方块的属性合集
//  id: 方块的id
//  width:  方块的宽
//  height: 方块的高度
//  originX: 方块的x坐标
//  originY: 方块的x坐标

//  Created by jiang feng on 15/9/23.
//  Copyright © 2015年 www.ieake.com. All rights reserved.
//

import Foundation

class Club{
  var id: Int = 0
  var position: Int = 0
  
  // 位置是否正确,当position == id 时就认为正确
  var isPosition = false
  var size: (width: Double, height: Double) = (0, 0)
  var origin: (x: Double, y: Double) = (0, 0)
  var button: UIButton
  
  // 可移动方向
  var direct: String = "none" // up right down left none
//  var direct: String? {
//    get {
//      return
//    }
//    set(n) {
//      n
//    }
//  }
  
  // 初始化
  init(id: Int, width: Double, height: Double, x: Double, y: Double, position: Int){
    self.id = id
    self.position = position
    self.size = (width, height)
    self.origin = (x, y)
    self.button = UIButton(frame: CGRectMake(CGFloat(origin.x), CGFloat(origin.y), CGFloat(size.width), CGFloat(size.height)))
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
    
    // 横向方块个数
    let colNumber: Int = 4
    
    // 纵向方块个数
    let rowNumber: Int = 3
    
    // 方块总数
    let totalClubNumbers: Int = colNumber * rowNumber
    
    // 创建方块id数组
    var clubIdArray: [Int] = []
    for (var i = 0; i < totalClubNumbers; i++){
      clubIdArray.append(i)
    }
    
    let tempRandomArray = randomArrays(0...(totalClubNumbers - 1))
//    print(tempRandomArray)
    
    
    var clubArray: Array<Any> = [];
    var clubMatrix: Array = [
                              [0, 1, 2],
                              [3, 4, 5],
                              [6, 7, 8],
                              [9, 10, 11]
                            ]
    var Ystep: Double = -1
    
    for(var i = 0; i < totalClubNumbers; i++){
      let clubWidth: Double = Double(screemWidth / 3)
      let clubHeight: Double = Double(screemHeight / 4)
      let clubOriginX = Double( Double(i % 3) * clubWidth)
      if i % 3 == 0{
        Ystep = Ystep + 1
      }
      
      let clubOriginY = Double( Ystep * clubHeight)
      let tempClub = Club(id: tempRandomArray[i],width: clubWidth, height: clubHeight, x: clubOriginX, y: clubOriginY, position: i)
      
      clubArray.append(tempClub)
      
      if( tempRandomArray[i] != totalClubNumbers - 1){
        self.view.addSubview(tempClub.button)
      } else {
        // 设置该方块四周可移动的方块属性
        
      }
      
    }
    
  }
  
  // 洗牌算法,生成指定范围随机数组
  func randomArrays(range: Range<Int>) -> [Int] {
    var tempArray: [Int] = []
    
    // 生产指定个元素的数组并按顺序赋值
    for(var i = range.startIndex; i < range.endIndex; i++) {
      tempArray.append(i)
    }
    
    // 循环数组长度的次数
    for _ in 0...range.endIndex {
      
      // 生产抽取的元素下标
      let RandomGetIndex: Int = randomInRange(0...tempArray.count - 1)
      
      // 生成插入的元素下标
      let RandomInsertIndex: Int = randomInRange(0...tempArray.count - 1)
      
      // 获取抽取下标的元素并在原数组删除它
      let getOutNumber = tempArray.removeAtIndex(RandomGetIndex)
      
      // 把抽取的元素插入另一个下标
      tempArray.insert(getOutNumber, atIndex: RandomInsertIndex)
      
    }
    
    return tempArray
    
  }
  
  
  // 生成随机数
  func randomInRange(range: Range<Int>) -> Int {
    let count = UInt32(range.endIndex - range.startIndex)
    return  Int(arc4random_uniform(count)) + range.startIndex
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

