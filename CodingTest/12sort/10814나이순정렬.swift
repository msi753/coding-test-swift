//
//  main.swift
//  CodingTest
//
//  Created by 임명심 on 2021/07/21.
//

import Foundation

let n = Int(readLine()!)!

var arr = [(Int, String)]()
for _ in 0..<n {
    let ageName = readLine()!.split(separator: " ").map{ String($0) }
    arr.append((Int(ageName[0])!, ageName[1]))
}

arr.sort(by: {$0.0 < $1.0})

for (age, name) in arr {
    print("\(age) \(name)")
}
