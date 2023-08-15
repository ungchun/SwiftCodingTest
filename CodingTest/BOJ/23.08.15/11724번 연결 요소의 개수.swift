import Foundation

let NM = readLine()!.split(separator: " ").map {Int(String($0))!}
let N = NM[0]
let M = NM[1]
var visited = [Int]()

var arr = Array(repeating: [Int](), count: N+1)

for _ in 0..<M {
	let input = readLine()!.split(separator: " ").map {Int(String($0))!}
	arr[input[0]].append(input[1])
	arr[input[1]].append(input[0])
}

//print(arr)

var cnt = 0

for i in 1...N {
	if !visited.contains(i) {
		cnt += 1
		DFS(start: i)
	}
}


func DFS(start: Int) {
	
	var stack = [start]
	
	while !stack.isEmpty {
		let node = stack.removeLast()
		
		if !visited.contains(node) {
			visited.append(node)
			stack.append(contentsOf: arr[node])
		}
	}
}

print(cnt)
