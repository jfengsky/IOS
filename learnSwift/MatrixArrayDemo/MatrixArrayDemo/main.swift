//
//  main.swift
//  MatrixArrayDemo
//
//  Created by jiang feng on 15/9/24.
//  Copyright © 2015年 www.ieake.com. All rights reserved.
//

/*
  
  [
    id: Int
    size: (width: Int, height: Int)
    origin: (x: CGFloat, y: CGFloat)
    move: String
    correctPosition: Bool
  ]
  
*/

import Foundation

struct MetrixArray {
  var rows: Int = 0
  var cols: Int = 0
  var array = []
  init(rows: Int, cols: Int, array: [Int]) {
    self.rows = rows
    self.cols = cols
    self.array = array
  }
  func MatrixArray() -> Array<Array<Int>> {
    var temp = [[Int]]()
    temp = [[2,3],[3,4]]
    return temp
  }
}

let array1 = [0, 1, 2, 3, 4, 5]
let rows: Int = 2
let cols = 3
var metrixArray = [[Int]]()
var index: Double = 0
var tempArr: [Int] = [0,1,2]
for(var i = 0; i < cols; i++){
  
//  for(var j = 0; j < rows; j++){
    metrixArray.append(tempArr)
//    index = index + 1
//  }
}
print(metrixArray)
