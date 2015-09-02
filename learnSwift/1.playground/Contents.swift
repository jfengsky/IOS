//: Playground - noun: a place where people can play

import Foundation

// 定义一个数组
var array1 = [2, 3, 4, 5]

var array2: Array = [2, 3, 4, 5]

var array3: Array<Int> = [2, 3, 4, 5]

// 推荐这种写法
var array4: [Int] = [2, 3, 4, 5]

// 数组元素可以有不同的类型
var array5: Array<Any> = [1, "string", false, 2.3]
var array6 = [1, "string", false, 2.3]

// 判断数组是否为空
array1.isEmpty //-> false

// 数组元素的个数
array1.count // -> 4

array1[3]

// 向数组末尾加入元素
array5.append("d")
array5 += [6]

// 向数组任意位置插入元素
array1.insert(1, atIndex: 0)

// 修改数组的元素的值
array1[2] = 9

// 删除数组某个元素
array1.removeLast()
array1.removeAtIndex(0)
// array1.removeAll(是否保持容量)

// Range
var range: Range<Int> = 0..<3                     // -> 1..<3
var range2: Range<Int> = Range(start: 0, end: 3)  // -> 1..<3
var range3 = 0...2                                // -> 1..<3

// 数组的批量操作
array4[0...2] //批量访问
array4[0...1] = [9,9,9,9] // 可以修改任意个数
// array4.replaceRange(Range(start: 0, end: 2), with: [9,9,9,9]) // 这个和上面是等价的
// array4.replaceRange(Range(0..<2, with: [9,9,9,9])

//数组的遍历
for elem in array4 {
  println(elem)
}

// 枚举方法遍历
for (index, value) in enumerate(array4) {
  println(index)
  println(value)
}




