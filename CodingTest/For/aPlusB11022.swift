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
    let line = readLine()!
    let intArr = line.components(separatedBy: " ").map({Int($0)!})
    print("Case #\(i): \(intArr[0]) + \(intArr[1]) = \(intArr[0]+intArr[1])")
}
