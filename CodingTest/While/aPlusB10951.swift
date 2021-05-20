//
//  main.swift
//  CodingTest
//
//  Created by 명심 on 2021/05/17.
//

import Foundation

while let intArr = readLine()?.components(separatedBy: " ").map( {Int($0)!} ) {
    print(intArr[0] + intArr[1])
}

