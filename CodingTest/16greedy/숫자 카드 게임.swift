//
//  숫자 카드 게임
//
//  2 4
//  7 3 1 8
//  3 3 3 4
//
//  3

import Foundation

let line = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = line[0]     // 행
let m = line[1]     // 열

var result = 0

for i in 0..<n {
    let numbers = readLine()!.split(separator: " ").map { Int(String($0))! }
    let minVal = numbers.min()!     // 가장 작은 값
    result = max(result, minVal)    // 가장 작은 값 중 가장 큰 값
}

print(result)

