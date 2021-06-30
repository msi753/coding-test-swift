//
//  main.swift
//  CodingTest
//
//  Created by 임명심 on 2021/06/29.
//

import Foundation

let nm = readLine()!.split(separator: " ").map { Int(String($0))! }

let n = nm[0]   //행의 수
let m = nm[1]   //열의 수

//방법1 그래프 입력받기
//var graph = [[Int]](repeating: [Int](), count: n)
//for i in 0..<n {
//    graph[i] = readLine()!.map { Int(String($0))! }
//}

//방법2 그래프 입력받기
var graph = [[Int]]()
for _ in 0..<n {
    graph.append(readLine()!.map{Int(String($0))!})
}

//print(graph)
//[[1, 0, 1, 1, 1, 1],
// [1, 0, 1, 0, 1, 0],
// [1, 0, 1, 0, 1, 1],
// [1, 1, 1, 0, 1, 1]]

// 상하좌우
let dx = [0, 0, 1, -1]
let dy = [-1, 1, 0, 0]

//큐
var queue = [(0, 0)]    //처음 시작점
var visited = [[Bool]](repeating: [Bool](repeating: false, count: m), count: n) //방문확인

while !queue.isEmpty {
    let (x, y) = queue.removeFirst()
    visited[x][y] = true
    
    for k in 0..<4 {
        let dx = x + dx[k]
        let dy = y + dy[k]
        
        if dx>=0 && dx<n && dy>=0 && dy<m {
            if graph[dx][dy]==1 && !visited[dx][dy] {
                graph[dx][dy] = graph[x][y] + 1
                queue.append((dx, dy))
            }
        }
    }
}

print(graph[n-1][m-1])  //(0, 0)부터 시작하므로

