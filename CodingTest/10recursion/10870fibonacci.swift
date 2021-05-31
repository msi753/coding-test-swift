//
//  main.swift
//  CodingTest
//
//  Created by 명심 on 2021/05/31.
//

import Foundation

let n = Int(readLine()!)!

func fibonacci(_ val: Int) ->Int {
    if val == 0 {
        return 0
    } else if val == 1 {
        return 1
    }
    return fibonacci(val-1) + fibonacci(val-2)
}

print(fibonacci(n))
