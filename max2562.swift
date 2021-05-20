//
//  main.swift
//  CodingTest
//
//  Created by 명심 on 2021/05/20.
//

import Foundation

var intArray: [Int] = []

for _ in 1 ... 9 {
    let intVal = Int(readLine()!)!
    intArray.append(intVal)
}

var max: Int = 0
var maxIndex: Int = 0

for i in 0 ... 8 {
    if intArray[i] > max {
        max = intArray[i]
        maxIndex = i+1
    }
}

print(max)
print(maxIndex)
