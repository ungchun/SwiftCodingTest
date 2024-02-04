import Foundation

let n = Int(readLine()!)!
var arr = Array(repeating: [Int](), count: n)
for i in 0..<n {
	arr[i] = readLine()!.split(separator: " ").map{Int(String($0))!}
}
var visited = Array(repeating: false, count: n)
var result = Int.max
var temp = 0

func dfs(_ depth: Int, _ now: Int, _ start: Int) {
	if depth == n, start == now {
		result = min(result, temp)
		return
	}
	
	for i in 0..<n {
		if !visited[i], arr[now][i] > 0 {
			visited[i] = true
			temp += arr[now][i]
			dfs(depth+1, i, start)
			temp -= arr[now][i]
			visited[i] = false
		}
	}
}

dfs(0, 0, 0)
print(result)
