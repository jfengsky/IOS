//
//  main.swift
//  structDemo
//
//  Created by jiang feng on 15/9/11.
//  Copyright (c) 2015年 www.ieake.com. All rights reserved.
//

import Foundation

class Human {
  let name: String
  var age: Int
  init(name: String, age: Int){
    self.name = name
    self.age = age
  }
}

class Woman {
  let haveBaby: Bool = false
  
//  override init(name: String, age: Int){
//    haveBaby = false
//    super.init(name: name, age: age)
//  }
  init(name: String, age: Int, haveBaby: Bool){
    self.haveBaby = haveBaby
    super.init(name: name, age: age)
  }
  convenience override init(name: String, age: Int){
    self.init(name: name, age: age, haveBaby: haveBaby)
  }
}













