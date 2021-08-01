//
//  main.swift
//  CodingTest
//
//  Created by 임명심 on 2021/08/01.
//

import Foundation

let data = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = data[0] //1~n까지의 자연수 중
let m = data[1] //중복 없이 m개 고른 수열

var isUsed = [Bool](repeating: false, count: n+1)   //사용여부
var arr = [Int](repeating: 0, count: m) //순열

func backTracking(_ digit: Int) {
    
    guard digit < m else {
        print(arr.reduce(into: "", { $0 += "\($1) " })) //String으로 바꿔주려고 into: ""
        return
    }
    
    for i in 1...n {
        if isUsed[i] {
            continue
        }
        
        arr[digit] = i
        isUsed[i] = true
        
        backTracking(digit+1)
        
        isUsed[i] = false
    }
}

backTracking(0) // 각 순열의 길이

