import Foundation

let nums = readLine()!.split(separator: " ").map {Int(String($0))!}
let n = nums[0]
let m = nums[1]
let v = nums[2]

var graph = Array(repeating: [Int](), count: n+1)

for _ in 0..<m {
    let a = readLine()!.split(separator: " ").map {Int(String($0))!}
    let b = a[0]
    let c = a[1]
    graph[b].append(c)
    graph[c].append(b)
}

func DFS(start: Int) {
    var visited = [Int]()
    var stack = [start]
    
    while !stack.isEmpty {
        let node = stack.removeLast()
        
        if !visited.contains(node) {
            visited.append(node)
            print(node, terminator: " ")
            stack.append(contentsOf: graph[node].sorted(by: >))
        }
    }
}

func BFS(start: Int) {
    var visited = [Int]()
    var queue = [start]
    
    while !queue.isEmpty {
        let node = queue.removeFirst()
        
        if !visited.contains(node) {
            visited.append(node)
            print(node, terminator: " ")
            queue.append(contentsOf: graph[node].sorted())
        }
    }
}

DFS(start: v)
print()
BFS(start: v)
