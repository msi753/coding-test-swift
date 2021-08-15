//
//  K번째수.swift
//  CodingTest
//
//  Created by 임명심 on 2021/08/15.
//

import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    return commands.map({(key) in
        return array[(key[0]-1)...(key[1]-1)].sorted()[key[2]-1]
    })
}
