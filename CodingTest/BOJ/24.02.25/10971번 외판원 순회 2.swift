import Foundation

let n = Int(readLine()!)!
var arr = [[Int]]()
var temp = 0
var result = Int.max
var visited = Array(repeating: false, count: n)

for _ in 0..<n {
	arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

func dfs(_ depth: Int, _ now: Int, _ destination: Int) {
	if depth == n, now == destination {
		result = min(result, temp)
		return
	}
	
	for i in 0..<n {
		if !visited[i], arr[now][i] > 0 {
			visited[i] = true
			temp += arr[now][i]
			dfs(depth+1, i, destination)
			visited[i] = false
			temp -= arr[now][i]
		}
	}
}

dfs(0, 0, 0)
print(result)
