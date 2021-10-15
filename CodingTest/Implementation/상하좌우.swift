//
//  상하좌우.swift
//  좌표의 크기를 넘어가면 이동하지 않는다
//  시작좌표는 (1, 1)
//
// 5                좌표크기
// R R R U D D      L(좌), R(우), U(상), D(하)
//
// 3 4              도착 좌표

import Foundation

let size = Int(readLine()!)!

let directionArr = readLine()!.split(separator: " ")

let dx = [0, 0, -1, 1]   // L R U D
let dy = [-1, 1, 0, 0]

// 시작 좌표
var x = 1
var y = 1

func findDirection(value: String) -> Int {
    var directionIndex: Int = 0
    switch value {
    case "L":
        directionIndex = 0
    case "R":
        directionIndex = 1
    case "U":
        directionIndex = 2
    case "D":
        directionIndex = 3
    default:
        print("out of index error")
    }
    
    return directionIndex
}

func isInbound(_ idx: Int) -> Bool {
    return (x+dx[idx]>0 && x+dx[idx]<=size && y+dy[idx]>0 && y+dy[idx]<=size)
}

for i in 0..<directionArr.count {
    let directionIndex = findDirection(value: String(directionArr[i]))
    
    if isInbound(directionIndex) {
        x += dx[directionIndex]
        y += dy[directionIndex]
    }
}

print("\(x) \(y)")

