import Foundation

let n = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map {Int(String($0))!}
let first = nums[0]
let second = nums[1]
let m = Int(readLine()!)!

var graph = Array(repeating: [Int](), count: n+1)

for _ in 0..<m {
    let inputs = readLine()!.split(separator: " ").map {Int(String($0))!}
    let a = inputs[0]
    let b = inputs[1]
    graph[a].append(b)
    graph[b].append(a)
}

var result = 0
var answer = -1

print(graph)

BFS(start: first)


func BFS(start: Int) {
    var visited = [Int]()
    var queue = [(start, 0)]
    
    while !queue.isEmpty {
        let node = queue.removeFirst()
        
        print("node \(node)")
        
        if second == node.0 {
            answer = node.1
            break
        }
        
        let temp = graph[node.0]
        
        for i in 0..<temp.count {
            if !visited.contains(temp[i]){
                visited.append(temp[i])
                queue.append((temp[i], node.1+1))
            }
        }
    }
}
