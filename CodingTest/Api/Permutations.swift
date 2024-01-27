import Foundation

/// 순열

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0], m = nm[1]

var visited = Array(repeating: false, count: n + 1)
var depth: Int = 0
var stack: [Int] = []

func dfs(_ depth: Int) {
	if depth == m {
		print(stack.map{String($0)}.joined(separator: " "))
		return
	}
	
	for i in 1...n {
		if !visited[i] {
			visited[i] = true
			stack.append(i)
			dfs(depth+1)
			visited[i] = false
			stack.removeLast()
		}
	}
}

dfs(0)

/// 조합

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0], m = nm[1]

var visited = Array(repeating: false, count: n + 1)
var depth: Int = 0
var stack: [Int] = []

func dfs(_ depth: Int) {
	if depth == m {
		if stack.sorted() == stack {
			print(stack.map{String($0)}.joined(separator: " "))
			return
		}
		return
	}
	
	for i in 1...n {
		if !visited[i] {
			visited[i] = true
			stack.append(i)
			dfs(depth+1)
			visited[i] = false
			stack.removeLast()
		}
	}
}

dfs(0)
