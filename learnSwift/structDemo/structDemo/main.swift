//
//  main.swift
//  structDemo
//
//  Created by jiang feng on 15/9/11.
//  Copyright (c) 2015年 www.ieake.com. All rights reserved.
//

import Foundation

class AB {
  var a: Int
  var b: Int
  
  // 指定构造方法
  init(a: Int, b: Int) {
    self.a = a
    self.b = b
    println("class AB init")
  }
  
  // 便利构造方法
  convenience init(a: Int) {
//    self.a = a
//    b = 0
    self.init(a: a, b: 0)
  }
  
}

class CD: AB {
  var c: Int
  var d: Int
  
  // 构造方法默认不会被继承
  // 基类的存储属性只能通过基类的构造方法初始化
  // 派生类引入的存储属性要先被初始化,然后再调用父类的构造方法
  init(c: Int, d: Int) {
    self.c = c
    self.d = d
    super.init(a: 0, b: 0)
  }
  
  convenience init(a: Int, b: Int, c: Int, d: Int) {
    
    self.init(c: c, d: d)
  }
  
}


















