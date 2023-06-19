import Foundation

func solution(_ n:Int, _ computers:[[Int]]) -> Int {
    var stack: [Int] = []
    var visited: [Bool] = Array(repeating: false, count: n)
    var result = 0
    
    for i in 0..<n {
        if !visited[i] {
            result += 1
            stack.append(i)
            
            while !stack.isEmpty {
                let node = stack.removeLast()
                visited[node] = true
                
                for j in 0..<n {
                    if j != node && !visited[j] && computers[node][j] == 1 {
                        stack.append(j)
                    }
                }
            }
        }
    }
    return result
}

//print(solution(3, [[1, 1, 0], [1, 1, 0], [0, 0, 1]]))
