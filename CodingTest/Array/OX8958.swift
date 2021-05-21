//
//  main.swift
//  CodingTest
//
//  Created by 명심 on 2021/05/20.
//

import Foundation

var testCase = Int(readLine()!)!

//for _ in 1 ... testCase {
//    let stringArr = readLine()!.split(separator: "X").map( {String($0)} )
//
//    var sum = 0
//    for i in 0 ... stringArr.count-1 {
//        var addNum = 0
//        for j in 1 ... stringArr[i].count {
//            addNum += j
//        }
//        sum += addNum
//    }
//    print(sum)
//}

for _ in 1 ... testCase {
    var (s, c) = (0, 0)
    
    let quiz = readLine()!
    
    for i in quiz {
        if (i == "O") {
            s += c + 1
            c += 1
        } else {
            c = 0
        }
    }
    print(s)
}
