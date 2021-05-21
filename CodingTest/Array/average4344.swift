//
//  main2.swift
//  CodingTest
//
//  Created by 명심 on 2021/05/21.
//

import Foundation

let testcase = Int(readLine()!)!

for _ in 1 ... testcase {
    let line = readLine()!.split(separator: " ", maxSplits: 1, omittingEmptySubsequences: true)
    
    let numberOfStudents = Int(line[0])!
    let score = line[1].split(separator: " ").map() { (Int(String($0))!) }
    
    var average = 0
    var sum = 0
    for i in score{
        sum += i
    }
    average = sum / numberOfStudents
    
    var count = 0
    for i in score {
        if i > average {
            count += 1
        }
    }
    
    let answer = String(format: "%.3f", Double(count)/Double(numberOfStudents)*100)
    print("\(answer)%")
}
