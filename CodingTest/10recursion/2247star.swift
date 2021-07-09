//
//  main.swift
//  CodingTest
//
//  Created by 임명심 on 2021/06/04.
//

import Foundation

let number = Int(readLine()!)!
var starArr = [[String]](repeating: [String](repeating: "*", count: number), count: number)

var n = number
while n > 1 {
    for i in 0 ..< number {
        for j in 0 ..< number {
            if i%3==1 && j%3==1 {
                starArr[i][j] = " "
            }
        }
    }
    n /= 3
}

print(starArr)
