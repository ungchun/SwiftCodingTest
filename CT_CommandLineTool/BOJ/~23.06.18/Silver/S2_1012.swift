import Foundation

// M 가로, N 세로, 위치 개수 K
let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let (M, N, K) = (input[0], input[1], input[2])

// x : 0  0 1 -1
// y : 1 -1 0  0
// (0,1) (0,-1) (1,0) (-1,0) -> x, y 인덱스 순서대로 출력하면 상 하 좌 우
let dx = [0, 0, 1, -1]
let dy = [1, -1, 0, 0]

var map = Array(repeating: Array(repeating: 0, count: N), count: M)

for _ in 0..<K {
    let xy = readLine()!.split(separator: " ").map { Int(String($0))! }
    let x = xy[0]
    let y = xy[1]
    map[x][y] = 1
}

for m in map {
    print(m)
}
var answer = 0

for i in 0..<M {
    for j in 0..<N {
        if map[i][j] == 1 {
            map[i][j] = 0
            answer += 1
            var stack = [(x: i, y: j)]
            print("새로운 덩어리 발견 \(i), \(j)")
            
            while !stack.isEmpty {
                let node =  stack.removeLast()
                
                for i in 0..<dx.count {
                    let nextX = node.x + dx[i]
                    let nextY = node.y + dy[i]
                    
                    // 지도밖으로 벗어난 친구들 예외처리
                    if nextX < 0 || nextX >= M || nextY < 0 || nextY >= N {
                        continue
                    } else {
                        if map[nextX][nextY] == 1 {
                            map[nextX][nextY] = 0
                            stack.append((x: nextX, y: nextY))
                            print("덩어리 안에서 다음갈 곳 \(nextX), \(nextY)")
                        }
                    }
                }
            }
        }
    }
}

print(answer)
