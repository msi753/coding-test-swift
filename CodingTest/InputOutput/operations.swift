//
//  main.swift
//  CodingTest
//
//  Created by 명심 on 2021/04/29.
//

import Foundation

//A+B, A-B, A*B, A/B(몫), A%B(나머지)
let line = readLine()!
let lineArr = line.components(separatedBy: " ")
let a = Int(lineArr[0])!
let b = Int(lineArr[1])!
print(a+b)
print(a-b)
print(a*b)
print(a/b)
print(a%b)
