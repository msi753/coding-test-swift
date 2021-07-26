//
//  main.swift
//  CodingTest
//
//  Created by 임명심 on 2021/07/26.
//

import Foundation

let _ = Int(readLine()!)!

var arr = readLine()!.split(separator: " ").map { Int(String($0))! }
arr.sort()

print(arr[arr.count/2 - 1])
