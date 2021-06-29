//
//  main.swift
//  CodingTest
//
//  Created by 임명심 on 2021/06/21.
//

import Foundation

let line = readLine()!.components(separatedBy: " ").map{ Int(String($0))! }
let numberOfVertex = line[0]
let numberOfEdge = line[1]
let startVertex = line[2]

var graph = [[Int]].init(repeating: [], count: numberOfVertex+1)
// [[], [2, 3, 4], [1, 4], [1, 4], [1, 2, 3]]
var isChecked: [Bool] = [Bool].init(repeating: false, count: numberOfVertex+1)

for _ in 0..<numberOfEdge {
    let part = readLine()!.components(separatedBy: " ").map{ Int(String($0))! }
    graph[part[0]].append(part[1])
    graph[part[1]].append(part[0])
}

for i in 1...numberOfVertex {
    graph[i].sort()
}

func dfs(start: Int) {
    if isChecked[start] {
        return
    }
    isChecked[start] = true
    print(start, terminator: " ")
    for vertex in graph[start] {
        if !isChecked[vertex] {
            dfs(start: vertex)
        }
    }
}

func bfs(start: Int) {
    var queue = [Int]()
    isChecked[start] = true
    queue.append(start)
    while !queue.isEmpty {
        let first = queue.removeFirst()
        print(first, terminator: " ")
        for vertex in graph[first] {
            if !isChecked[vertex] {
                isChecked[vertex] = true
                queue.append(vertex)
            }
        }
    }

}

dfs(start: startVertex)
print()
isChecked = [Bool].init(repeating: false, count: numberOfVertex+1)
bfs(start: startVertex)
