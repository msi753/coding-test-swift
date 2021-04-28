//
//  main.swift
//  CodingTest
//
//  Created by 명심 on 2021/04/29.
//

import Foundation
//(A+B)%C, 둘째 줄에 ((A%C) + (B%C))%C, 셋째 줄에 (A×B)%C, 넷째 줄에 ((A%C) × (B%C))%C
let line = readLine()!
let lineArr = line.components(separatedBy: " ")
let A = Int(lineArr[0])!
let B = Int(lineArr[1])!
let C = Int(lineArr[2])!
print((A+B)%C)
print(((A%C) + (B%C))%C)
print((A*B)%C)
print(((A%C) * (B%C))%C)
