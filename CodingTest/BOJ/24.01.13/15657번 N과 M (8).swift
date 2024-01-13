import Foundation

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0], m = nm[1]
var values = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted()
var visited = Array(repeating: false, count: n)
var depth: Int = 0
var stack: [String] = []
var str = ""

func dfs(_ start: Int) {
	if stack.count == m {
		str += stack.joined(separator: " ")
		str += "\n"
		return
	}
	
	for i in start..<values.count {
		stack.append(String(values[i]))
		dfs(i)
		stack.removeLast()
	}
}
dfs(0)
print(str)
