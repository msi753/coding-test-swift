//
//  main.swift
//  CodingTest
//
//  Created by 임명심 on 2021/07/21.
//

import Foundation

var valueSet = Set<Int>()
var valueDictionary = [Int:Int]()

let _ = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map { Int(String($0))! }

for n in input {
    valueSet.insert(n)  //Set는 insert 사용
}

let sortedValue = valueSet.sorted()
var count = 0
for value in sortedValue {
    valueDictionary.updateValue(count, forKey: value)
    count += 1
}

//보면 set로 중복없이 값들을 정렬하고 0부터 시작해서 증가하면서 대소를 나타내고 있다
//value는 압축된 좌표가 된다
//print(valueDictionary)
//[-10: 0, -9: 1, 2: 2, 4: 3]

for value in input {
    print(valueDictionary[value]!, terminator: " ")
}


