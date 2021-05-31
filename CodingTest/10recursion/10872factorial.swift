//
//  main.swift
//  CodingTest
//
//  Created by 명심 on 2021/05/31.
//

import Foundation

let n = Int(readLine()!)!

func factorial(_ val: Int) -> Int {
    if val == 0 {
        return 1
    }
    
    return val * factorial(val-1)
}

print(factorial(n))
