//
//  main.swift
//  CodingTest
//
//  Created by 임명심 on 2021/07/07.
//

import Foundation

public struct Deque<T> {
    private var array: [T?]
    private var head: Int
    private var capacity: Int
    private let originalCapacity: Int
    
    public init(_ capacity: Int = 10) { //10개짜리 공간
        self.capacity = max(capacity, 1)
        originalCapacity = self.capacity
        array = [T?](repeating: nil, count: capacity)
        head = capacity //array 바깥쪽 맨 뒤
    }
    
    public var count: Int {
        return array.count - head
    }
    
    public var isEmpty: Bool {
        return count == 0
    }
    
    public mutating func enqueue(_ element: T) {
        array.append(element)
    }
    
    public mutating func dequeueBack() -> T? {
        if isEmpty {
            return nil
        } else {
            return array.removeLast()
        }
    }
    
    public mutating func enqueueFront(_ element: T) {
        if head == 0 {
            capacity *= 2
            let emptySpace = [T?](repeating: nil, count: capacity)
            array.insert(contentsOf: emptySpace, at: 0)
            head = capacity
        }
        
        head -= 1
        array[head] = element
    }
    
    public mutating func dequeue() -> T? {
        guard head < array.count, let element = array[head] else {
            return nil
        }
        
        array[head] = nil
        head += 1
        
        if capacity >= originalCapacity && head >= capacity*2 { //처음 설정한 originalCapacity 보다 크고(확장했고), head가 용량의 두배보다 클 때
            let amountToRemove = capacity + capacity/2
            array.removeFirst(amountToRemove)
            head -= amountToRemove
            capacity /= 2
        }
        
        return element
    }
}

let mnh = readLine()!.split(separator: " ").map { Int(String($0))! }
let m = mnh[0]   //열
let n = mnh[1]   //행
let h = mnh[2]   //높이

//[Int]()는 [Int]이고
//[Int]는 [Int].type이다
var graph = [[[Int]]](repeating: [[Int]](repeating: [Int](), count: n), count: h)
for z in 0..<h {
    for x in 0..<n {
        let row = readLine()!.split(separator: " ").map { Int(String($0))! }
        graph[z][x] = row
        //graph[z][x].append(contentsOf: row) 상동
    }
}

var deque = Deque<(Int, Int, Int)>()

//처음 시작 점 queue에 저장하기
for z in 0..<h {
    for i in 0..<n {
        for j in 0..<m {
            if graph[z][i][j] == 1 {
                deque.enqueue((z, i, j))
            }
        }
    }
}

//상하좌우
let d = [(-1, 0, 0), (1, 0, 0), (0, -1, 0), (0, 1, 0), (0, 0, -1), (0, 0, 1)]

while !deque.isEmpty {
    let now = deque.dequeue()!
    //visited[z][x][y] = true

    for i in 0...5 {
        let dz = d[i].0+now.0
        let dx = d[i].1+now.1
        let dy = d[i].2+now.2

        if dz>=0 && dz<h && dx>=0 && dx<n && dy>=0 && dy<m {
            if graph[dz][dx][dy] == 0 {
                graph[dz][dx][dy] = graph[now.0][now.1][now.2] + 1
                deque.enqueue((dz, dx, dy))
            }
        }
    }
}

var flag = false    //모두 익지 않았을 때 체크
var maxValue = 0    //토마토가 모두 익는데 걸리는 최소일수
for z in 0..<h {
    for i in 0..<n {
        for j in 0..<m {
            if graph[z][i][j] == 0 {
                flag = true
            }
            if graph[z][i][j] > maxValue {
                maxValue = graph[z][i][j]
            }
        }
    }
}


//모두 익지 않으면 -1 리턴
if flag {
    print(-1)
} else if maxValue == 1 {
    print(0)
} else {
    print(maxValue-1)   // 왜냐하면 1이 있을 때가 0일이기 때문에
}

