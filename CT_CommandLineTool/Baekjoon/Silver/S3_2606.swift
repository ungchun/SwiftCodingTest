import Foundation

let computer = Int(readLine()!)
let network = Int(readLine()!)
var count = 0
var graph = Array(repeating: [Int](), count: computer!+1)

for _ in 0..<network! {
    let inputs = readLine()!.split(separator: " ").map{Int(String($0))!}
    let first =  inputs[0]
    let seconde =  inputs[1]
    graph[first].append(seconde)
    graph[seconde].append(first)
}

func DFS(start: Int) {
    var visited = [Int]()
    var stack = [start]
    
    while !stack.isEmpty {
        let node = stack.removeLast()
        
        if !visited.contains(node) {
            visited.append(node)
            count += 1
            stack.append(contentsOf: graph[node].sorted(by: >))
        }
    }
}

DFS(start: 1)
print(count-1)
