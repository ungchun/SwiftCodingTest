import Foundation

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0], m = nm[1]
var depth: Int = 0
var stack: [Int] = []
var str = ""

func dfs(_ start: Int) {
	if stack.count == m {
		str += stack.map{String($0)}.joined(separator: " ")
		str += "\n"
		return
	}
	
	for i in start...n {
		stack.append(i)
		dfs(i)
		stack.removeLast()
	}
}

dfs(1)
print(str)
