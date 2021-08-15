//
//  가장큰수.swift
//  CodingTest
//
//  Created by 임명심 on 2021/08/15.
//

import Foundation

// 스트링으로 변환해서 610, 106을 생성한 후 내림차순으로 정렬하기
let sorted = numbers.sorted {"\($0)\($1)" > "\($1)\($0)"}   //[6, 2, 10]

// 첫번째가 0인 경우는 [0, 0] 뭐 이런 경우이고, "00"이 아니라 "0"을 리턴해야한다
if sorted[0] == 0 {
    return "0"
}

return sorted.reduce("") { $0 + "\($1)" }   // 스트링으로 출력하기
//let b = sorted.map{String($0)}.joined() //상동
