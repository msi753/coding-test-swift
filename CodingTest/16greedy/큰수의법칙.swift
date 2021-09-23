//
//  큰수의 법칙
//  (단, 서로 다른 인덱스에 해당하는 수가 같은 경우에도 서로 다른 것으로 간주한다)
//
//  5 8 3
//  2 4 5 4 6
//
//  46
//

import Foundation

let line = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = line[0]   // 배열의 크기
var m = line[1]   // 숫자가 더해지는 횟수
let k = line[2]   // 연속해서 더해질 수 있는 최대 수

var numberArray = readLine()!.split(separator: " ").map { Int(String($0))! }
numberArray.sort(by: >)
let first = numberArray[0]  // 가장 큰 수
let second = numberArray[1] // 두 번째로 큰 수

var result = 0

while true {
    for i in 0..<k {    // 가장 큰 수 k번 더하기
        if m == 0 {     // m이 0이면 반복문 탈출
            break
        }
        result += first
        m -= 1
    }
    
    if m == 0 {     // m이 0이면 반복문 탈출
        break
    }
    result += second    // 두 번째로 큰 수 한 번 더하기
    m -= 1
}

print(result)
