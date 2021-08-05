//
//  main.swift
//  CodingTest
//
//  Created by 임명심 on 2021/08/05.
//

import Foundation

let n = Int(readLine()!)

var nArr = readLine()!.split(separator: " ").map { Int(String($0))! }

nArr.sort()    // 이분탐색은 정렬되어이 있어야하기 때문에

let m = Int(readLine()!)!

let mArr = readLine()!.split(separator: " ").map { Int(String($0)) }


func binarySearch(_ start: Int, _ end: Int, _ mData: Int) -> Int {
    var start = start
    var end = end
    
    while start < end {
        
        let mid = start + (end - start) / 2
        
        if nArr[mid] == mData {
            return mid
        } else if nArr[mid] < mData {
            start = mid + 1
        } else {
            end = mid
        }
    }
    
    return -1
}

for i in 0..<mArr.count {
    let result = binarySearch(0, mArr.count, mArr[i]!)
    if result == -1 {
        print(0)
    } else {
        print(1)
    }
}


