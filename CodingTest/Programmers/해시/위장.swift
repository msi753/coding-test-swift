//
//  위장.swift
//  CodingTest
//
//  Created by 임명심 on 2021/08/15.
//

import Foundation

let phoneBook = [["yellowhat", "headgear"], ["bluesunglasses", "eyewear"], ["green_turban", "headgear"]]

var dict = [String: Int]()

// 종류별로 개수 정리하기
phoneBook.forEach { item in     // 생략하면 $0[0], $0[1]로 접근 가능함

    //let value = item[0]
    let key = item[1]

    if let valueCount = dict[key] {
        dict[key] = valueCount + 1
    } else {
        dict[key] = 1
    }
}

print(dict) // ["eyewear": 1, "headgear": 2]

// 종류별로
// (key: "eyewear", value: 1) 이런 식으로 접근하는구나

var result = 1
//dict.forEach { key, value in
//    result *= (value + 1)
//}

//dict.forEach { item in
//    result *= (item.value + 1)
//}

for value in dict.values {
    result *= (value + 1)
}

print(result-1)
