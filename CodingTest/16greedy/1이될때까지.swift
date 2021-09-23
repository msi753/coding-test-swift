//
//  1이 될때까지
//
//  25 5
//
//  2
//

import Foundation

let line = readLine()!.split(separator: " ").map { Int(String($0))! }
var n = line[0]
let k = line[1]

var result = 0

while n >= k {      // n이 k 이상이라면 k로 계속 나누기
    if n % k != 0 { // 나누어 떨어지지 않으면 1씩 빼기
        n -= 1
        result += 1
    }
    n /= k
    result += 1
}

while n > 1 {
    n -= 1
    result += 1
}

print(result)
