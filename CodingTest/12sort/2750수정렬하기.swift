//
//  main.swift
//  CodingTest
//
//  Created by 임명심 on 2021/07/21.
//

import Foundation

let n = Int(readLine()!)!

var arr = [Int]()
for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}

for i in arr.sorted() { //O(NlogN)
    print(i)
}
