//
//  main.swift
//  CodingTest
//
//  Created by 임명심 on 2021/07/09.
//

//0:빈칸, 1:벽, 2:바이러스
let nm = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = nm[0]   //세로(행)
let m = nm[1]   //가로(열)

var data = [[Int]]()
var temp = [[Int]](repeating: [Int](repeating: 0, count: m), count: n)  //임시저장소

for _ in 0..<n {
    data.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}

let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1, 1]

//바이러스 퍼트리기
func virus(_ x: Int, _ y: Int) {
    for i in 0..<4 {
        let nx = x + dx[i]
        let ny = y + dy[i]
        
        if nx>=0 && nx<n && ny>=0 && ny<m {
            if temp[nx][ny] == 0 {  //빈칸일 때
                temp[nx][ny] = 2
                virus(nx, ny)
            }
        }
    }
}

//안전영역 구하기
func getScore() -> Int {
    var score = 0
    for i in 0..<n {
        for j in 0..<m {
            if temp[i][j] == 0 {
                score += 1
            }
        }
    }
    return score
}

var result = 0
func dfs(_ count: Int) {
    var count = count
    
    //벽3개일 때
    if count == 3 {
        //벽 세운 후 모양
        for x in 0..<n {
            for y in 0..<m {
                temp[x][y] = data[x][y]
            }
        }
        //바이러스 전파
        for x in 0..<n {
            for y in 0..<m {
                if temp[x][y] == 2 {
                    virus(x, y)
                }
            }
        }
        
        //전파 후 안전 영역 크기 계산하기
        result = max(result, getScore())
        return
    }
    
    
    //빈칸에 울타리 설치하기
    for x in 0..<n {
        for y in 0..<m {
            if data[x][y] == 0 {
                data[x][y] = 1
                count += 1
                dfs(count)
                
                data[x][y] = 0
                count -= 1
            }
        }
    }
    
}

dfs(0)  //벽 개수 넘기기
print(result)

