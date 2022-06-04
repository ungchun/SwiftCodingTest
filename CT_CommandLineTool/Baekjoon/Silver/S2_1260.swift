import Foundation

let nums = readLine()!.split(separator: " ").map {Int(String($0))!}
let n = nums[0]
let m = nums[1]
let v = nums[2]

var graph = Array(repeating: [Int](), count: n+1)
print(graph)

for _ in 0..<m {
    let readLine = readLine()!.split(separator: " ").map{Int(String($0))!}
    let src = readLine[0]
    let dest = readLine[1]
    graph[src].append(dest)
    graph[dest].append(src)
}

print(graph)

func DFS(start: Int) {
    var visited = [Int]()
    var stack = [start]
    
    while !stack.isEmpty {
        let node = stack.popLast()!
        
        if !visited.contains(node) {
            visited.append(node)
            print(node, terminator: " ")
            stack.append(contentsOf: graph[node].sorted(by: >))
        }
        print("stack \(stack)")
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
        print("queue \(queue)")
    }
}

DFS(start: v)
print()
BFS(start: v)
