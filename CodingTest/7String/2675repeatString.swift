//
//  main.swift
//  CodingTest
//
//  Created by 명심 on 2021/05/27.
//

import Foundation

//2
//3 ABC
//5 /HTP

var n = Int(readLine()!)!

for _ in 1 ... n {
    let stringArr = readLine()!.components(separatedBy: " ").map( {String($0)} )
    let r = Int(stringArr[0])!
    for char in stringArr[1] {
        for _ in 1 ... r {
            print(char, terminator: "")
        }
    }
    print()
}
