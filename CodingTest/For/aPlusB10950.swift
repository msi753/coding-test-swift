//
//  main.swifte
//  CodingTest
//
//  Created by 명심 on 2021/05/07.
//

import Foundation

let line = readLine()!
let testCase = Int(line)!

for _ in 1 ... testCase {
    let line = readLine()!
    let intArr = line.components(separatedBy: " ").map({Int($0)!})
    print(intArr[0] + intArr[1])
}

