//
//  main.swift
//  CodingTest
//
//  Created by 임명심 on 2021/06/21.
//

import Foundation

let vertex = Int(readLine()!)!
let edge = Int(readLine()!)!

var graph: [[Int]] = [[Int]].init(repeating: [], count: vertex+1)
var visited: [Bool] = [Bool].init(repeating: false, count: vertex+1)

for _ in 0..<edge {
    let pair = readLine()!.components(separatedBy: " ").map{ Int(String($0))! }
    //양방향 그래프
    graph[pair[0]].append(pair[1])
    graph[pair[1]].append(pair[0])
}

var count: Int = 0
func dfs(start: Int) {
    visited[start] = true
    for vertex in graph[start] {
        if visited[vertex] {
            continue
        }
        count += 1
        dfs(start: vertex)
    }
}

dfs(start: 1)

print(count)
