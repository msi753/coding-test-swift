//
//  main.swift
//  CodingTest
//
//  Created by 명심 on 2021/04/29.
//

import Foundation

let line = readLine()!
let lineArr = line.components(separatedBy: " ").map({Int($0)!})
let A = lineArr[0]
let B = lineArr[1]
if A < B {
    print("<")
} else if A > B {
    print(">")
} else {
    print("==")
}
