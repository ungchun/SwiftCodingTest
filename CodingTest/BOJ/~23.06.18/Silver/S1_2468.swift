import Foundation

let dx = [0, 0, 1, -1]
let dy = [1, -1, 0, 0]

let N = Int(readLine()!)!

var graph = Array(repeating: [Int](), count: N)
//print(graph)

var max = 0
for i in 0..<N {
    let row = readLine()!.split(separator: " ").map{Int(String($0))!}
    max = max < row.max()! ?  row.max()! : max
    graph[i] = row
}

//print(graph)
//print("max \(max)")

var result = [Int]()

for i in 0...100 {
    if i == max {
        break
    }
    
    DFS(start: i)
}

print(result.max()!)

func DFS(start: Int) {
    var tempGraph = graph
    var tempResult = 0
    for i in 0..<N {
        for j in 0..<N {
            if tempGraph[i][j] > start {
                var stack = [(i, j)]
                tempGraph[i][j] = -1
                tempResult += 1
                
                while !stack.isEmpty {

                    let node = stack.removeLast()
                    
                    for k in 0..<dx.count {
                        let nextX = node.0 + dx[k]
                        let nextY = node.1 + dy[k]
                        
                        if nextX < 0 || nextX >= N || nextY < 0 || nextY >= N {
                            
                        } else {
                            if tempGraph[nextX][nextY] > start {
                                tempGraph[nextX][nextY] = -1
                                stack.append((nextX, nextY))
                            }
                        }
                    }
                }
            }
        }
    }
    result.append(tempResult)
}
