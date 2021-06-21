//
//  main.swift
//  CodingTest
//
//  Created by 임명심 on 2021/06/20.
//

import Foundation

var line = String(readLine()!)

// -로 나누기
// 각각의 뭉탱이는 숫자+숫자 형태로 구성됨
// 뭉탱이1 - 뭉탱이2 - 뭉탱이3
let stringWithPlus = line.split(separator: "-").map{ String($0) }

// 뭉탱이1의 합
var answer = 0
var firstString = stringWithPlus[0].split(separator: "+").map{ Int(String($0))! }
for j in firstString {
    answer += j
}

for i in 1 ..< stringWithPlus.count {
    
    // 각 뭉탱이의 합
    var temp = 0
    let numbers = stringWithPlus[i].split(separator: "+").map{ Int(String($0))! }
    for j in numbers {
        temp += j
    }
    answer -= temp
}

print(answer)
