import Foundation

let N = Int(readLine()!)!
let M = Int(readLine()!)!

var graph = Array(repeating: [Int](), count: N+1)

for _ in 0..<M {
	let input = readLine()!.split(separator: " ").map {Int(String($0))!}
	graph[input[0]].append(input[1])
	graph[input[1]].append(input[0])
}

func DFS(start: Int) {
	var cnt = 0
	var stack = [start]
	var visited = [Int]()
	
	while !stack.isEmpty {
		let node = stack.removeLast()
		
		if !visited.contains(node) {
			visited.append(node)
			stack.append(contentsOf: graph[node])
			cnt += 1
		}
	}
	print(cnt-1)
}

DFS(start: 1)
