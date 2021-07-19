//
//  main.swift
//  CodingTest
//
//  Created by 임명심 on 2021/07/19.
//

let n = Int(readLine()!)!   //수의 개수 n
let numbers = readLine()!.split(separator: " ").map { Int(String($0))! }
let op = readLine()!.split(separator: " ").map { Int(String($0))! } // 연산자 + - x / 순서

var maxN = -1000000000
var minN = 1000000000
func dfs(_ idx: Int, _ plus: Int, _ subtraction: Int, _ multiply: Int, _ division: Int, _ tot: Int) {
    if idx == n {
        maxN = max(tot, maxN)
        minN = min(tot, minN)
        return
    }
    
    if plus<op[0] {
        dfs(idx+1, plus+1, subtraction, multiply, division, tot+numbers[idx])
    }
    if subtraction<op[1] {
        dfs(idx+1, plus, subtraction+1, multiply, division, tot-numbers[idx])
    }
    if multiply<op[2] {
        dfs(idx+1, plus, subtraction, multiply+1, division, tot*numbers[idx])
    }
    if division<op[3] {
        dfs(idx+1, plus, subtraction, multiply, division+1, tot/numbers[idx])
    }
}

dfs(1, 0, 0, 0, 0, numbers[0])
print(maxN)
print(minN)
