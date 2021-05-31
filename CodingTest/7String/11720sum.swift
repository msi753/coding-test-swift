//
//  main.swift
//  CodingTest
//
//  Created by 명심 on 2021/05/27.
//

import Foundation

_ = readLine()

if let line = readLine() {
    var sum = 0
    for i in line {
        sum += Int(String(i))!
    }
    print(sum)
}
