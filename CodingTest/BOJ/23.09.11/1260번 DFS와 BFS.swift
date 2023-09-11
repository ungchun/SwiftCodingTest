import Foundation

let input = readLine()!.split(separator: " ").map {Int(String($0))!}
let N = input[0]
let M = input[1]
let V = input[2]

var arr = Array(repeating: [Int](), count: N+1)

for _ in 0..<M {
	let input = readLine()!.split(separator: " ").map {Int(String($0))!}
	arr[input[0]].append(input[1])
	arr[input[1]].append(input[0])
}


func DFS(start: Int) {
	var stack = [start]
	var visited = [Int]()
	
	while !stack.isEmpty {
		let node = stack.removeLast()
		
		if !visited.contains(node) {
			visited.append(node)
			print(node, terminator: " ")
			stack.append(contentsOf: arr[node].sorted(by: >))
		}
	}
}

func BFS(start: Int) {
	var queue = [start]
	var visited = [Int]()
	
	while !queue.isEmpty {
		let node = queue.removeFirst()
		
		if !visited.contains(node) {
			visited.append(node)
			print(node, terminator: " ")
			queue.append(contentsOf: arr[node].sorted(by: <))
		}
	}
}

DFS(start: V)
print()
BFS(start: V)
