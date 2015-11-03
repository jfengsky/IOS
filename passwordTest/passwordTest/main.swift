//
//  main.swift
//  passwordTest
//
//  Created by jiangfeng on 15/10/8.
//  Copyright © 2015年 jiangfeng. All rights reserved.
//

import Foundation

var NumberPasswordArray: [String] = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

let letterPasswordArray: [String] = ["a", "b", "c", "d", "e","f", "g", "h","i","j","k","l","m","n","o","p","q","r", "s", "t", "u", "v", "w", "x", "y", "z"]
let speciaCharacterPasswordArray: [String] = ["!", "@", "#", "$", "%", "&", "*"]
let passwordLength: Int = 8

//print(NumberPasswordArray)
//print(letterPasswordArray[0].uppercaseString)

// 生成指定范围内的随机整数
func randomInRange(range: Range<Int>) -> Int {
    let count = UInt32(range.endIndex - range.startIndex)
    return  Int(arc4random_uniform(count)) + range.startIndex
}

func checkSameLetter(letter: String, array: [String]) -> Bool {
    for value in array {
        if (letter == value){
            return true
        }
    }
    return false
}

// 随机字母数组
func randomArray(array: [String]) -> [String] {
    var tempPasswordArray: [String] = []
    
    var tempLetter: String
    
    while tempPasswordArray.count < passwordLength {
        tempLetter = array[randomInRange(0..<array.count)]
        if !checkSameLetter(tempLetter, array: tempPasswordArray) {
            tempPasswordArray.append(tempLetter)
        }
    }
    
    return tempPasswordArray
}

print(randomArray(NumberPasswordArray))

//print(randomInRange(0...10))