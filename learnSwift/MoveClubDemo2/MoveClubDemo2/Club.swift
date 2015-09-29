//
//  Club.swift
//  MoveClubDemo2
//  方块的类
//  Created by jiang feng on 15/9/28.
//  Copyright © 2015年 www.ieake.com. All rights reserved.
//


class Club {
  
  // 方块的大小,根据屏幕分辨率和行列计算出来的
  var size: (width: Double, height: Double) = (0, 0)
  
  // 方块在二维数组中的位置
  var position: (x: Int, y: Int) = (0,0)
  
  // 方块的坐标,也是计算属性
  var origin: (x: Double, y: Double) = (0, 0)
  
  // 方块可移动的方向, 之后空白方块周围的才能移动
  // nil: 不可移动  "top":上; "right":右; "down":下; "left":左
  var canMoveDirection: String? = nil
  
  // 该方块位置是否正确,当所有方块位置都正确,该游戏成功完成
  var CorrectPosition: Bool = false
  
  init(size:(width: Double, height: Double), position:(x: Int, y: Int)){
    self.size = size
    self.position = position
  }
  
}
