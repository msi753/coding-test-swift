//
//  main.swift
//  CodingTest
//
//  Created by 명심 on 2021/05/21.
//

import Foundation

var notSelfNumArr: Set<Int> = []

func d(_ value: Int) -> Int {
    var value = value
    var notSelfNum = value
    while value != 0 {
        notSelfNum += (value % 10)
        value /= 10
    }
    return notSelfNum
}

for i in 1 ... 10000 {
    notSelfNumArr.insert(d(i))
}

for i in 1 ... 10000 {
    if !notSelfNumArr.contains(i) {print(i)}
}
