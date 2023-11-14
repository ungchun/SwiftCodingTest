import Foundation

let NMV = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = NMV[0]
let M = NMV[1]
let V = NMV[2]

var array = Array(repeating: [Int](), count: N+1)
for _ in 0..<M {
	let input = readLine()!.split(separator: " ").map {Int(String($0))!}
	array[input[0]].append(input[1])
	array[input[1]].append(input[0])
}

func DFS(start: Int) {
	var visited = [Int]()
	var stack = [start]
	
	while !stack.isEmpty {
		let node = stack.removeLast()
		
		if !visited.contains(node) {
			visited.append(node)
			stack.append(contentsOf: array[node].sorted(by: >))
			print(node, terminator: " ")
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
			queue.append(contentsOf: array[node].sorted(by: <))
			print(node, terminator: " ")
		}
	}
}

DFS(start: V)
print()
BFS(start: V)
