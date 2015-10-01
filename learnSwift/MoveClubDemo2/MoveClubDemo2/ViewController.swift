//
//  ViewController.swift
//  MoveClubDemo2
//
//  Created by jiang feng on 15/9/28.
//  Copyright © 2015年 www.ieake.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
//    var club = Club()
    
    // 获取屏幕的宽和高
    let screemWidth  = self.view.bounds.width
    let screemHeight = self.view.bounds.height
    
    // 横向方块个数,一共有多少行
    let rowNumber: Int = 4
    
    // 纵向方块个数,一共有多少列
    let colNumber: Int = 3
    
    // 计算方块的宽和高
    let clubWidth: Double = Double(Int(screemWidth) / colNumber)
    let clubHeight: Double = Double(Int(screemHeight) / rowNumber)
    
    
    // 方块总数
    let totalClubNumbers: Int = colNumber * rowNumber
    
    // 创建方块id数组
    var clubIdArray: [Int] = []
    for (var i = 0; i < totalClubNumbers; i++){
      clubIdArray.append(i)
    }
    
    let tempRandomArray = randomArrays(0...(totalClubNumbers - 1))
    
    var matrixClub = Matrix(rows: rowNumber, columns: colNumber)
    matrixClub.grid = tempRandomArray
    print(tempRandomArray)
    
    
    var clubArray: [Club] = []
    var tempRandomIndex: Int = 0
    for(var rowIndex = 0; rowIndex < rowNumber; rowIndex++){
      for(var colIndex = 0; colIndex < colNumber; colIndex++){
        clubArray.append(Club(id: tempRandomArray[tempRandomIndex], size: (clubWidth, clubHeight), position: (rowIndex, colIndex)))
        tempRandomIndex++
      }
    }
    
    
    for(var i = 0; i < rowNumber; i++){
      for(var j = 0; j < colNumber; j++){
//        clubArray.append(Club(size: (clubWidth, clubHeight), position: (x: i, y: j)))
        print("[\(i),\(j)] = \(matrixClub[i, j])")
      }
    }
    
    for(var i = 0; i < 12; i++){
      let button = UIButton()
      button.frame = CGRectMake(CGFloat(clubArray[i].origin.x), CGFloat(clubArray[i].origin.y), CGFloat(clubArray[i].size.width), CGFloat(clubArray[i].size.height))
      button.backgroundColor = UIColor.grayColor()
      button.setTitle(String(clubArray[i].id), forState:.Normal)
      
      // 最后一个矩形不显示
      if( clubArray[i].id != totalClubNumbers - 1){
        self.view.addSubview(button)
        print(clubArray[i].canMoveDirection)
      } else {
        
        // 设置不显示矩形四周的矩形移动属性
        // print(clubArray[i].position)
        
        // 设置所有方块不可移动
        clearMoveDirection(clubArray)
        
        // 设置四个方向的方块可移动属性
        // 上方矩形 -> 下
        if(clubArray[i].position.x != 0){
          print(clubArray[i].position)
          setMoveDirection( Int(clubArray[i].position.x - 1), y: Int(clubArray[i].position.y), _moveTo: "down")
          // TODO
        }
        
      }
//      self.view.addSubview(button)
    }
//    print(clubArray[4].origin)
    

  }
  
  // 格局序号设置矩形的移动方向
  func setMoveDirection(x: Int, y: Int, _moveTo: String){
    print("\(x),\(y)")
  }
  
  
  // 重置所有矩形移动方向为nil
  func clearMoveDirection(_ClubArray:[Club]){
    for(var i = 0; i < _ClubArray.count; i++){
      _ClubArray[i].canMoveDirection = nil
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

