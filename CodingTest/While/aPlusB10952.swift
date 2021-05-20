//
//  main.swift
//  CodingTest
//
//  Created by 명심 on 2021/05/13.
//

import Foundation

while true {
    let intArr = readLine()!.components(separatedBy: " ").map( {Int($0)!} )
    if intArr == [0, 0] {
        break
    }
    print(intArr[0] + intArr[1])
}



