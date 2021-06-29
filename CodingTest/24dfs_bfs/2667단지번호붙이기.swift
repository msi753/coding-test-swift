//
//  main.swift
//  CodingTest
//
//  Created by 임명심 on 2021/06/24.
//

import Foundation

// 지도의 크기
let n = Int(readLine()!)!

// 지도 입력받기
var graph = [[Int]](repeating: [Int](), count: n)
for i in 0..<n {
    graph[i] = readLine()!.map{Int(String($0))!}
}

// 상하좌우 이동
let dx = [0, 0, -1, 1]
let dy = [-1, 1, 0, 0]

// 단지 개수 배열
var answer = [Int]()

var cnt = 0 // 단지 개수

func dfs(_ x: Int, _ y: Int) {
    graph[x][y] = 0 // 방문 처리
    cnt += 1
    for k in 0..<4 {
        let nx = x + dx[k]
        let ny = y + dy[k]
        
        if nx >= 0 && nx < n && ny >= 0 && ny < n {
            if graph[nx][ny] == 1 {
                dfs(nx, ny)
            }
        }
    }
}

for i in 0..<n {
    for j in 0..<n {
        if graph[i][j] == 1 {
            cnt = 0
            dfs(i, j)
            answer.append(cnt)
        }
    }
}

answer.sort()
print(answer.count)
answer.forEach {
    print($0)
}
