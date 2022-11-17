import Foundation

let inptus = readLine()!.split(separator: " ").map{ Int(String($0))! }
let N = inptus[0]
let M = inptus[1]
let K = inptus[2]
let X = inptus[3]

var map = Array(repeating: [Int](), count: N+1)

for _ in 0..<M {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let a = input[0]
    let b = input[1]
    map[a].append(b)
}

func BFS(start: Int) -> [Int] {
    var visited = Array(repeating: false, count: N+1)
    var cost = Array(repeating: 0, count: N+1)
    var queue = [(start, 0)]
    
    var result = [Int]()
    
    visited[start] = true

    while !queue.isEmpty {
        let node = queue.removeFirst()
        if node.1 >= K { continue }

        for value in map[node.0] {
            if visited[value] == false {
               visited[value] = true
                cost[value] = node.1 + 1
                queue.append((value, node.1 + 1))
                if node.1 + 1 == K {
                    result.append(value)
                }
            }
        }
    }
    return result
}

var result = BFS(start: X)

result.sort()

if result.count == 0 {
    print(-1)
} else {
    result.forEach{
        print($0)
    }
}

