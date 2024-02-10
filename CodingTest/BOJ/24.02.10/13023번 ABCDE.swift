import Foundation

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0], m = nm[1]
var arr = Array(repeating: [Int](), count: n)
var visited = Array(repeating: false, count: n)
for _ in 0..<m {
	let input = readLine()!.split(separator: " ").map{Int(String($0))!}
	arr[input[0]].append(input[1])
	arr[input[1]].append(input[0])
}

var chk = false

func dfs(_ now: Int, _ depth: Int) {
	if depth == 4 {
		chk = true
		return
	}
	visited[now] = true
	for i in 0..<arr[now].count {
		let next = arr[now][i]
		if !visited[next] {
			dfs(next,depth + 1)
		}
	}
	visited[now] = false
}

for i in 0..<n {
	dfs(i, 0)
	if chk {
		break
	}
}

if chk {
	print("1")
}else {
	print("0")
}
