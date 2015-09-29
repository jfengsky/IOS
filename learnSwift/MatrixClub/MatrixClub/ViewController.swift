//
//  ViewController.swift
//  MatrixClub
//  矩阵效果
//  Created by jiang feng on 15/9/24.
//  Copyright © 2015年 www.ieake.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    
    var array2 = Array<Array<Int>>()
    var array3 = [
      [0,0,0],
      [0,0,0],
      [0,0,0],
      [0,0,0]
    ]
    let tempArray = randomArrays(0...11)
    array3[0] = [0, 1, 2]
    var tmpArr = tempArray[0...2]
    array3[0][0...2] = tmpArr
    print(tmpArr)
    print(array3)
    print(tempArray)
    
    let row: Int = 4  // 矩阵数组横向个数
    let col: Int = 3  // 矩阵数组纵向个数
    let clubNumbers: Int = row * col
    let randomArray: [Int] = randomArrays(0...clubNumbers)

    var maxtriArray = Matrix(rows: row, columns: col)
    maxtriArray.grid = randomArray
//    for(var i = 0; i < col; i++){
//      for (var j = 0; j < row; j++){
//        print(maxtriArray[j,i])
//      }
//    }

    
  }
  
  // 算法:随机抽一张牌,把它换到一个随机位置,一直到所有牌都换了为止
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
  
  
  struct Matrix {
    let rows: Int, columns: Int
    var grid: [Int]
    init(rows: Int, columns: Int) {
      self.rows = rows
      self.columns = columns
      grid = Array(count: rows * columns, repeatedValue: 0)
    }
    func indexIsValidForRow(row: Int, column: Int) -> Bool {
      return row >= 0 && row < rows && column >= 0 && column < columns
    }
    subscript(row: Int, column: Int) -> Int {
      get {
        assert(indexIsValidForRow(row, column: column), "Index out of range")
        return grid[(row * columns) + column]
      }
      set {
        assert(indexIsValidForRow(row, column: column), "Index out of range")
        grid[(row * columns) + column] = newValue
      }
    }
  }
  
  
  // 随机生成一个指定范围内的整数
  func randomInRange(range: Range<Int>) -> Int {
    let count = UInt32(range.endIndex - range.startIndex)
    return  Int(arc4random_uniform(count)) + range.startIndex
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

