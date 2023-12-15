import Foundation

let N = Int(readLine()!)!

var visited = Array(repeating: false, count: N + 1)
var arr = Array(repeating: 0, count: N)

func dfs(_ index: Int) {
	if (index == N) {
		print(arr.map{String($0)}.joined(separator: " "))
		return
	}
	
	for i in 1...N {
		if (visited[i]) {continue}
		arr[index] = i
		visited[i] = true
		dfs(index+1)
		visited[i] = false
	}
}

dfs(0)
