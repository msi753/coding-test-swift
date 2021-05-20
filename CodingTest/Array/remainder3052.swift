//
//  divide2577.swift
//  CodingTest
//
//  Created by 명심 on 2021/05/20.
//

import Foundation

var intArray = [Int](repeating: 0, count: 42)

for _ in 1 ... 10 {
    let intVal = Int(readLine()!)!
    let remainder = intVal % 42
    intArray[remainder] += 1
}

var count: Int = 0
for i in 0 ... 41 {
    if intArray[i] != 0 {
        count += 1
    }
}

print(count)
