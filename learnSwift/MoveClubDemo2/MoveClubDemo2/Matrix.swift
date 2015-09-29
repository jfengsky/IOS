//
//  Matrix.swift
//  二维数组
//
//  Created by jiang feng on 15/9/28.
//  Copyright © 2015年 www.ieake.com. All rights reserved.
//

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
