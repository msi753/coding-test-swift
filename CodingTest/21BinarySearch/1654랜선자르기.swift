//
//  main.swift
//  CodingTest
//
//  Created by 임명심 on 2021/08/05.
//

import Foundation

let kn = readLine()!.split(separator: " ").map { Int(String($0))! }
let k = kn[0]   //랜선의 개수
let n = kn[1]   //필요한 랜선의 개수    k<=n

var kArr = [Int]()
for _ in 0..<k {
    kArr.append(Int(readLine()!)!)
}

func binarySearch(_ start: Int, _ end: Int) {
    var start = start
    var end = end

    while start <= end {
        
        var numberOfLan = 0
        let mid = start + (end - start) / 2
        
        for data in kArr {
            numberOfLan += data / mid
        }
        
        if numberOfLan >= n {
            start = mid + 1
        } else {
            end = mid - 1
        }
    }
    
    print(end)
}

let kMax = kArr.max()!   // 랜선의 길이 1 ~ kMax
binarySearch(1, kMax)
