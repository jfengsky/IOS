//
//  main.swift
//  RandomNumber
//  生成指定范围内随机不重复数字元素的数组
//  Created by jiang feng on 15/9/22.
//  Copyright © 2015年 www.ieake.com. All rights reserved.
//

import Foundation


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

// 随机生成一个指定范围内的整数
func randomInRange(range: Range<Int>) -> Int {
  let count = UInt32(range.endIndex - range.startIndex)
  return  Int(arc4random_uniform(count)) + range.startIndex
}


print(randomArrays(0...47))
