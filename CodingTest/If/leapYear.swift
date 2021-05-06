//
//  main.swift
//  CodingTest
//
//  Created by 명심 on 2021/04/29.
//

import Foundation

let year = Int(readLine()!)!

if (year%4 == 0 && year%100 != 0) || year%400 == 0 {
    print("1")
} else {
    print("0")
}
