//
//  main.swift
//  CodingTest
//
//  Created by 명심 on 2021/05/20.
//


import Foundation

let N = Int(readLine()!)!

let intArr = readLine()!.components(separatedBy: " ").map{ Int(String($0))! }

print(intArr.min()!, intArr.max()!)
