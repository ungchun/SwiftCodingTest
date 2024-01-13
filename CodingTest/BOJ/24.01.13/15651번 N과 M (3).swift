import Foundation

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0], m = nm[1]
var depth: Int = 0
var stack: [Int] = []
var str = ""

func dfs(_ depth: Int) {
	if depth == m {
		str += stack.map{String($0)}.joined(separator: " ")
		str += "\n"
		return
	}
	
	for i in 1...n {
		stack.append(i)
		dfs(depth+1)
		stack.removeLast()
	}
}

dfs(0)
print(str)
