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
    for(var rowIndex = 0; rowIndex < rowNumber; rowIndex++){
      for(var colIndex = 0; colIndex < colNumber; colIndex++){
        clubArray.append(Club(size: (clubWidth, clubHeight), position: (rowIndex, colIndex)));
      }
    }
    
//    for(var clubIndex = 0; clubIndex < totalClubNumbers; clubIndex++){
//      clubArray.append(Club(size: (clubWidth, clubHeight), origin: (x: 0.0, y: 0.0)))
//      print(clubArray[clubIndex].size)
//    }
    
//    print(clubArray)
    
    
//    for(var i = 0; i < colNumber; i++){
//      for(var j = 0; j < rowNumber; j++){
//        print("[\(i),\(j)] = \(matrixClub[i, j])")
//      }
//    }

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

