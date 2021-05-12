//
//  main.swift
//  CodingTest
//
//  Created by 명심 on 2021/05/07.
//

import Foundation

let line = readLine()!
let intVal = Int(line)!

var sumVal: Int = 0
for i in 1 ... intVal {
    sumVal = sumVal + i
}

print(sumVal)
