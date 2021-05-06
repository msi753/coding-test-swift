//
//  main.swift
//  CodingTest
//
//  Created by 명심 on 2021/04/29.
//

import Foundation

let lineA = readLine()!
let lineB = readLine()!
let numberA = Int(lineA)!   //Int()의 리턴값은 Optional이라서 !Unwrap해줬다
let numberB = Int(lineB)!
print((numberB%100)/10)
print(numberA * (numberB%10))
print(numberA * (numberB%100/10))
print(numberA * (numberB/100))  // /는 몫을 리턴
print(numberA * numberB)
