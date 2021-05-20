//
//  main.swift
//  CodingTest
//
//  Created by 명심 on 2021/05/20.
//

import Foundation

var a = Int(readLine()!)!
var b = Int(readLine()!)!
var c = Int(readLine()!)!

var num = a*b*c

let numToString = String(num)

var countArray = [Int](repeating: 0, count: 10) //[0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

for _ in 1 ... numToString.count {
    let index = num%10
    countArray[index] += 1
    num /= 10
}

countArray.forEach {
    print($0)
}
