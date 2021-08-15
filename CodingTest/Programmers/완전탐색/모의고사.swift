//
//  모의고사.swift
//  CodingTest
//
//  Created by 임명심 on 2021/08/15.
//

import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let hater1 = [1, 2, 3, 4, 5]
    let hater2 = [2, 1, 2, 3, 2, 4, 2, 5]
    let hater3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]

    var scores = [0, 0, 0]
    
    for i in 0..<answers.count {

        if answers[i] == hater1[i % hater1.count] {
            scores[0] += 1
        }
        if answers[i] == hater2[i % hater2.count] {
            scores[1] += 1
        }
        if answers[i] == hater3[i % hater3.count] {
            scores[2] += 1
        }
    }

    let maxVal = scores.max()

    var result = [Int]()
    for i in 0..<scores.count {
        if scores[i] == maxVal {
            result.append(i+1)
        }
    }

    return result
}

