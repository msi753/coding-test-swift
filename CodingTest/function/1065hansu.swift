//
//  main.swift
//  CodingTest
//
//  Created by 명심 on 2021/05/27.
//


/**
 (firstNum + thirdNum) / 2 == secondNum 이렇게 해두 된다.
 1~99는 모두 해당되고
 123 135 이런 수가 한수의 예시이다.
 */
import Foundation

let n:Int = Int(readLine()!)!

var answer: Int = 0

for i in 1 ... n {
    if i < 100 {
        answer += 1
    } else {
        let units: Int = i % 10
        let tens: Int = i % 100 / 10
        let hundreds: Int = i / 100
        if (hundreds - tens) == (tens - units) {
            answer += 1
        }
    }
}

print(answer)



