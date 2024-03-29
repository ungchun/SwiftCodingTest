import Foundation

let N = Int(readLine()!)!
var map = Array(repeating: Array(repeating: 0, count: N), count: N)

let dx = [0, 0, 1, -1]
let dy = [1, -1, 0, 0]

for i in 0..<N {
    let row = Array(readLine()!.map{Int(String($0))!})
    map[i] = row
}

var resultArr = [Int]()
var answer = 0

for i in 0..<N {
    for j in 0..<N {
        if map[i][j] == 1 {
            map[i][j] = 0
            answer += 1
            var stack = [(i, j)]
            
            while !stack.isEmpty {
                let node = stack.removeLast()
                
                for i in 0..<dx.count {
                    let nextX = node.0 + dx[i]
                    let nextY = node.1 + dy[i]
                    
                    if nextX < 0 || nextX >= N || nextY < 0 || nextY >= N {
                        continue
                    } else {
                        if map[nextX][nextY] == 1 {
                            map[nextX][nextY] = 0
                            answer += 1
                            stack.append((nextX, nextY))
                        }
                    }
                }
            }
            resultArr.append(answer)
            answer = 0
        }
    }
}

resultArr.sort()
print(resultArr.count)

for i in resultArr {
    print(i)
}
