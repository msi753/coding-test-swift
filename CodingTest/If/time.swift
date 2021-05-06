//
//  main.swift
//  CodingTest
//
//  Created by 명심 on 2021/04/29.
//

import Foundation

let line = readLine()!
let lineArr = line.components(separatedBy: " ").map({Int($0)!})

var hour = lineArr[0]
var minute = lineArr[1]

if minute < 45 {
    minute = minute + 60 - 45
    if hour == 0 {
        hour = hour + 24 - 1
    } else {
        hour = hour - 1
    }
} else {
    minute = minute - 45
}

print(hour, minute, "test", separator: "..")
print(hour, minute, "test", terminator: "..")
