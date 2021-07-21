//
//  main.swift
//  CodingTest
//
//  Created by 임명심 on 2021/07/21.
//

import Foundation

let n = Int(readLine()!)!

var arr = [String]()
for _ in 0..<n {
    arr.append(readLine()!)
}

arr = Array(Set(arr))   //💥중복제거

arr.sort { (first, second) -> Bool in
    if first.count == second.count {
        return first < second
    }
    return first.count < second.count
}

for word in arr {
    print(word)
}
