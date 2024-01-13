import Foundation

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0], m = nm[1]
var values = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted()
var visited = Array(repeating: false, count: n)
var stack: [String] = []
var check: Set<String> = []
var str = ""

func dfs() {
	if stack.count == m {
		let value = stack.joined(separator: " ")
		if !check.contains(value) {
			check.insert(value)
			print(value)
		}
		return
	}
	
	for i in 0..<values.count {
		stack.append(String(values[i]))
		dfs()
		stack.removeLast()
	}
}
dfs()
