//
//  main.swift
//  CodingTest
//
//  Created by 임명심 on 2021/06/16.
//

import Foundation

let number = Int(readLine()!)!
var conferences = [(Int, Int)]()

for _ in 0 ..< number {
    let timeTuple = readLine()!.components(separatedBy: " ").map{ Int(String($0))! }
    conferences.append((timeTuple[0], timeTuple[1]))
}

// 종료 시간을 먼저 비교해야 한다
// 그 후 시작 시간이 빠른 것을 찾아야 한다
conferences.sort(by: { $0.0 < $1.0 } )
conferences.sort(by: { $0.1 < $1.1 } )

var count = 0
var now = -1
//for (start, end) in conferences {
//    if now <= start {
//        count += 1
//        now = end
//    }
//}
for conference in conferences {
    if now <= conference.0 {
        count += 1
        now = conference.1
    }
}
print(count)
