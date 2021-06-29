//
//  main.swift
//  CodingTest
//
//  Created by 임명심 on 2021/06/20.
//

import Foundation

var cityNumber = Int(readLine()!)!

var distance = readLine()!.split(separator: " ").map { Int(String($0))! }
var cost = readLine()!.split(separator: " ").map { Int(String($0))! }

var min = cost[0]
var answer = 0
for i in 0..<cost.count-1 {
    if cost[i] < min {
        min = cost[i]
    }
    answer += min * distance[i]
}

print(answer)
