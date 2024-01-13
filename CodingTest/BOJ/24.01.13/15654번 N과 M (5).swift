import Foundation

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0], m = nm[1]
var values = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted()
var visited = Array(repeating: false, count: n)
var depth: Int = 0
var stack: [Int] = []
var str = ""

func dfs(_ depth: Int) {
	if depth == m {
		str += stack.map{String($0)}.joined(separator: " ")
		str += "\n"
		return
	}
	
	for i in 0..<values.count {
		if !visited[i] {
			visited[i] = true
			stack.append(values[i])
			dfs(depth+1)
			visited[i] = false
			stack.removeLast()
		}
	}
}

dfs(0)
print(str)
