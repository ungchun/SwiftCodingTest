import Foundation

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0], m = nm[1]
var values = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted()
var visited = Array(repeating: false, count: n+1)
var depth: Int = 0
var stack: [Int] = []
var str = ""

func dfs(_ depth: Int, _ start: Int) {
	if stack.count == m {
		str += stack.map{String($0)}.joined(separator: " ")
		str += "\n"
		return
	}
	
	for i in start...values.count {
		if !visited[i] {
			visited[i] = true
			stack.append(values[i-1])
			dfs(depth+1, i)
			visited[i] = false
			stack.removeLast()
		}
	}
}
dfs(0, 1)
print(str)
