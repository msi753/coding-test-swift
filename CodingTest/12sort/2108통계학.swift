//
//  main.swift
//  CodingTest
//
//  Created by 임명심 on 2021/07/21.
//

import Foundation

let n = Int(readLine()!)!

var arr = [Int]()
for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}

var sum = 0
var dict = [Int:Int]()
var mode = 0    //빈도수
for element in arr {
    sum += element
    dict[element] = (dict[element] != nil ? dict[element]! : 0) + 1
    mode = mode < dict[element]! ? dict[element]! : mode
}

print(sum/arr.count)    //산술평균 average

let sortedArr = arr.sorted()
print(sortedArr[n/2])  //중앙값 median

let filtered = dict.filter{ $0.value == mode }
let countMode = filtered.sorted{ $0.key < $1.key }
print(countMode[countMode.count > 1 ? 1: 0].key)    //빈도수 mode

print(sortedArr[n-1]-sortedArr[0])  //범위 range
