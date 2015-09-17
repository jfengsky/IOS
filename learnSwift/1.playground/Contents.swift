//: Playground - noun: a place where people can play

import Foundation

struct MyStudent {
  var name: String
  var chinese: Double
  var math: Double
  var center: (x:Double, y:Double) {
    
  }
  
  
  func showMyself() {
    println("名字:\(name),语文:\(chinese),数学:\(math)")
  }
}

class myClass {
  var members: [MyStudent] = []
  lazy var score: Double = self.getScore()
  func getScore() -> Double{
    println("test lazy")
    var t: Double = 0
    for i in members {
      t += i.chinese
      t += i.math
    }
    if members.count > 0 {
      return t / Double(members.count)
    } else {
      return 0
    }
  }
  
  func show() {
    for i in members {
      i.showMyself()
    }
  }
}

let s0 = MyStudent(name: "张三", chinese: 100, math: 100)
let s1 = MyStudent(name: "李四", chinese: 90, math: 90)

let c0 = myClass()
c0.members.append(s0)
c0.members.append(s1)

//c0.show()
//c0.getScore()
c0.score
