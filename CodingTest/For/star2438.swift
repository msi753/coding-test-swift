//
//  main.swift
//  CodingTest
//
//  Created by 명심 on 2021/05/07.
//

import Foundation

let line = readLine()!
let intVal = Int(line)!

//var star: String = "*"
//for i in 1 ... intVal {
//    print(star)
//    star += "*"
//}

for i in 1 ... intVal {
    print(String(repeating: "*", count: i))
}

