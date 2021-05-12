//
//  main.swift
//  CodingTest
//
//  Created by 명심 on 2021/05/07.
//

import Foundation

let line = readLine()!
let intVal = Int(line)!

for i in 1 ... intVal {
    for _ in stride(from: intVal, to: i, by: -1) {
        print(" ", terminator: "")
    }
    for _ in 1 ... i {
        print("*", terminator: "")
    }
    print()
}


