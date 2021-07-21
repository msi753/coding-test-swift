//
//  main.swift
//  CodingTest
//
//  Created by 임명심 on 2021/07/21.
//

import Foundation

let n = Int(readLine()!)!

var arr = [(Int, Int)]()

for _ in 0..<n {
    let xy = readLine()!.split(separator: " ").map{ Int(String($0))! }
    arr.append((xy[0], xy[1]))
}


arr.sort { (first, second) -> Bool in
    if first.1 == second.1 {    //y좌표가 같으면 x좌표가 증가하는 순서로
        return first.0 < second.0
    }
    return first.1 < second.1   //y좌표가 증가하는 순서로
}

for i in 0..<n {
    print("\(arr[i].0) \(arr[i].1)")
}

