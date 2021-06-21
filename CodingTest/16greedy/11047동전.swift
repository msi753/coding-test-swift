//
//  main.swift
//  CodingTest
//
//  Created by 임명심 on 2021/06/14.
//

import Foundation

let intArr = readLine()!.components(separatedBy: " ").map{ Int(String($0))! }
let n = intArr[0]
var k = intArr[1]

var coins: [Int] = []
for _ in 0..<n {
    let coin = Int(readLine()!)!
    coins.append(coin)
}

var count = 0
for i in stride(from: coins.count-1, to: -1, by: -1) {  //0~9
    if coins[i] > k {
        continue
    }
    count += k / coins[i]
    k %= coins[i]
}
print(count)
