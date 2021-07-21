//
//  main.swift
//  CodingTest
//
//  Created by 임명심 on 2021/07/21.
//

import Foundation

let numberString = readLine()!

var arr = [Character]()
for char in numberString {
    arr.append(char)
}

for element in arr.sorted(by:>) {
    print(element, terminator: "")
}
