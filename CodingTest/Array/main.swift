//
//  main.swift
//  CodingTest
//
//  Created by 명심 on 2021/05/20.
//

import Foundation

//5
//OOXXOXXOOO
//OOXXOOXXOO
//OXOXOXOXOXOXOX
//OOOOOOOOOO
//OOOOXOOOOXOOOOX

var testCase = Int(readLine()!)!

for _ in 1 ... testCase {
    let stringArr = Array(readLine()!.components(separatedBy: "").map( {String($0)} ))
    print(stringArr.count)
}
