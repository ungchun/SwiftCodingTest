import Foundation

let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]
var map = [[Int]]()
var result = Set<String>()
for _ in 0..<5 {
	map.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

func dfs(_ depth: Int, _ value: String, _ x: Int, _ y: Int) {
	if depth == 6 {
		 result.insert(value)
		return
	}
	
	for i in 0..<4 {
		let nx = dx[i] + x
		let ny = dy[i] + y
		if nx < 0 || ny < 0 || nx >= 5 || ny >= 5 {
			continue
		} else {
			dfs(depth+1, value+String(map[nx][ny]), nx, ny)
		}
	}
}

for i in 0..<5 {
	for j in 0..<5 {
		dfs(1, String(map[i][j]), i, j)
	}
}

print(result.count)
