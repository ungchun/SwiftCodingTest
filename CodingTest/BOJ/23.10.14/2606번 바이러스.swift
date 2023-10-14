import Foundation

let N = Int(readLine()!)!
let M = Int(readLine()!)!

var graph = Array(repeating: [Int](), count: N+1)

for _ in 0..<M {
	let input = readLine()!.split(separator: " ").map {Int(String($0))!}
	graph[input[0]].append(input[1])
	graph[input[1]].append(input[0])
}

func BFS(start: Int) {
	var cnt = 0
	var queue = [start]
	var visited: [Int] = []
	
	while !queue.isEmpty {
		let node = queue.removeFirst()
		
		if !visited.contains(node) {
			visited.append(node)
			cnt += 1
			queue.append(contentsOf: graph[node])
		}
	}
	print(cnt-1)
}

BFS(start: 1)
