import Foundation

let input = readLine()!.split(separator: " ").map {Int(String($0))!}
let N = input[0]
let M = input[1]
let R = input[2]

DFS(start: R)

func DFS(start: Int) {
	var stack = [start]
	var visited = [Int]()
	
	var result = Array(repeating: 0, count: N)
	
	var arr = Array(repeating: [Int](), count: N+1)
	
	for _ in 0..<M {
		let input = readLine()!.split(separator: " ").map {Int(String($0))!}
		let first = input[0]
		let second = input[1]
		arr[first].append(second)
		arr[second].append(first)
	}
	
	var cnt = 1
	while !stack.isEmpty {
		let node = stack.removeLast()
		
		if !visited.contains(node) {
			visited.append(node)
			result[node-1] = cnt
			cnt += 1
			stack.append(contentsOf: arr[node].sorted { $0 > $1 })
		}
		
//		print("stack \(stack)")
	}
//	print(result)
	
	result.forEach { val in
		print(val)
	}
}


