//
//  main.swift
//  CodingTest
//
//  Created by 임명심 on 2021/06/17.
//

import Foundation

let n = Int(readLine()!)!

var people = readLine()!.components(separatedBy: " ").map{ Int(String($0))! }
people.sort(by: <)
print(people.enumerated())
var totalTime = 0

func addTime(time: Int) -> Int {
    totalTime += time
    return totalTime
}

var answer = 0
for time in people {
    answer += addTime(time: time)
}

print(answer)
