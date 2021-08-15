//
//  H-Index.swift
//  CodingTest
//
//  Created by 임명심 on 2021/08/15.
//

import Foundation

func solution(_ citations:[Int]) -> Int {
    let n = citations.count //n편
    
    let sortedCitations = citations.sorted(by: >)
    
    for (i, element) in sortedCitations.enumerated() {
        if i >= element {
            return i
        }
    }
    
    // 인용횟수가 논문개수보다 많은 경우 [10, 50, 100]
    return citations.count
}
