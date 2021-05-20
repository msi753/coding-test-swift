//
//  main.swift
//  CodingTest
//
//  Created by 명심 on 2021/05/17.
//

import Foundation

let input = Int(readLine()!)!

var newNumber: Int = 0
var count: Int = 0

newNumber = input

repeat {
    let tens = newNumber / 10
    let units = newNumber % 10
    let sum = tens + units
    
    newNumber = units*10 + sum%10
    count += 1
} while (input != newNumber)

print(count)
