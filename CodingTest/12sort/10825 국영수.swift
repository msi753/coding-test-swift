//
//  main.swift
//  CodingTest
//
//  Created by 임명심 on 2021/07/21.
//

import Foundation

let n = Int(readLine()!)!

var scoreArr = [(String, Int, Int, Int)]()  //이름, 국, 영, 수

for _ in 0..<n {
    let score = readLine()!.split(separator: " ").map { String($0) }
    scoreArr.append( (score[0], Int(score[1])!, Int(score[2])!, Int(score[3])!) )
}

scoreArr.sort(by: {
    if $0.1 == $1.1 && $0.2 == $1.2 && $0.3 == $1.3{   //모든 점수가 같으면
        return $0.0 < $1.0              //이름이 사전 순으로 증가하는 순서로
    }
    if $0.1 == $1.1 && $0.2 == $1.2 {   //국어 점수가 같고 영어 점수가 같으면
        return $0.3 > $1.3              //수학 점수가 감소하는 순서로
    }
    if $0.1 == $1.1 {           //국어 점수가 같으면
        return $0.2 < $1.2      //영어 점수가 증가하는 순서로
    }
    return $0.1 > $1.1          //국어 점수가 감소하는 순서로
})

scoreArr.forEach {
    print($0.0)
}
