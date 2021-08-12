//
//  main.swift
//  CodingTest
//
//  Created by 임명심 on 2021/08/07.
//


let nc = readLine()!.split(separator: " ").map{ Int(String($0))! }

let n = nc[0]   // 집 개수
let c = nc[1]   // 공유기 개수

var house = [Int]()
for _ in 0..<n {
    house.append(Int(readLine()!)!)
}

house.sort()    // 정렬

var low = 1                             // 최소 거리
var high = house.last! - house.first!   // 최대 거리

// 해당 거리로 공유기 설치가 가능한지 체크하기
func isPossible(_ distance: Int) -> Bool {
    
    var count = 1   // 공유기 설치
    var prev = 0
    
    // 모든 집을 돌면서
    for i in 1..<n {
        if house[i] - house[prev] >= distance { // 거리의 사이가 길면
            count += 1  // 공유기 설치하고
            prev = i    // 이전 위치로 옮기기
        }
    }
    
    return count >= c
}

var maxDistance = low   // 최솟값인 1로 초기화
while low <= high {
    let mid = (high + low) / 2
    
    if isPossible(mid) {
        maxDistance = max(maxDistance, mid)
        low = mid + 1
    } else {
        high = mid - 1
    }
}

print(maxDistance)
