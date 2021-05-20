//
//  main.swift
//  CodingTest
//
//  Created by 명심 on 2021/05/20.
//

import Foundation

let numberOfItems = Float(readLine()!)!

let intArr = readLine()!.components(separatedBy: " ").map( {Float(String($0))!} )

let maxVal = intArr.max()!

var sum: Float = 0
for i in 1 ... intArr.count {
    sum += intArr[i-1]/maxVal
}

print(sum*100/numberOfItems)
