//
//  main.swift
//  CodingTest
//
//  Created by 명심 on 2021/05/13.
//

import Foundation

let intArr = readLine()!.components(separatedBy: " ").map( {Int($0)!} )
let arr = readLine()!.components(separatedBy: " ").map( {Int($0)!} )

let n = intArr[0]
let x = intArr[1]

for i in 0 ... n-1 {
    if (arr[i] < x) {
        print(arr[i], terminator: " ")
    }
}
