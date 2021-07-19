//
//  main.swift
//  CodingTest
//
//  Created by 임명심 on 2021/07/13.
//

import Foundation

struct Object: Comparable {
    let k: Int  //바이러스의종류 1~k
    let x: Int
    let y: Int
    let s: Int  //시간
    static func < (lhs: Object, rhs: Object) -> Bool {
        return lhs.k < rhs.k
    }
}

let nk = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = nk[0]   //NxN 사이즈
let k = nk[1]   //바이러스의 종류 개수

let sxy = readLine()!.split(separator: " ").map { Int(String($0))! }
let s = sxy[0]  //시간
let x = sxy[1]
let y = sxy[2]

var examiner = [[Int]]()    //시험관정보
var virus = [Object]()      //바이러스정보
for i in 0..<n {
    examiner.append(readLine()!.split(separator: " ").map { Int(String($0))! })
    for j in 0..<n {
        if examiner[i][j] != 0 {
            virus.append(Object(k: examiner[i][j], x: i, y: j, s: 0))   //바이러스종류, 위치x, 위치y, 시간
        }
    }
}

//낮은 번호부터 증식하는 바이러스 정렬
virus.sort()

let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1, 1]

while !virus.isEmpty {
    let v = virus.removeFirst()
    
    if v.s == s {
        break
    }
    
    for i in 0..<4 {
        let nx = v.x + dx[i]
        let ny = v.y + dy[i]
        
        if nx>=0 && nx<n && ny>=0 && ny<n {
            if examiner[nx][ny] == 0 {
                examiner[nx][ny] = v.k
                virus.append(Object(k: v.k, x: nx, y: ny, s: v.s+1))
            }
        }
    }
}

print(examiner)
print(examiner[x][y])
