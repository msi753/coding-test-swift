//
//  main.swift
//  CodingTest
//
//  Created by 명심 on 2021/04/29.
//

import Foundation

let line = Int(readLine()!)!

switch line {
    case 90...100:
        print("A")
    case 80...89:
        print("B")
    case 70...79:
        print("C")
    case 60...69:
        print("D")
    default:
        print("F")
}

