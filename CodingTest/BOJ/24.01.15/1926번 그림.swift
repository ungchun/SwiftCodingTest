import Foundation

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0], m = nm[1]
var map = Array(repeating: Array(repeating: 0, count: m), count: n)
for i in 0..<n {
	map[i] = readLine()!.split(separator: " ").map{Int(String($0))!}
}
var cnt = 0
var maxValue = 0
var queue: [(Int, Int)] = []
var dx = [1, -1, 0, 0]
var dy = [0, 0, 1, -1]

for i in 0..<n {
	for j in 0..<m {
		if map[i][j] == 1 {
			cnt += 1
			var tempMax = 0
			queue.append((i, j))
			while !queue.isEmpty {
				let now = queue.removeLast()
				if map[now.0][now.1] == 1 {
					map[now.0][now.1] = -1
					tempMax += 1
					for k in 0..<4 {
						let nx = dx[k] + now.1
						let ny = dy[k] + now.0
						
						if nx < 0 || ny < 0 || nx >= m || ny >= n {
							continue
						} else {
							queue.append((ny, nx))
						}
					}
				}
			}
			maxValue = max(maxValue, tempMax)
		}
	}
	
}

print(cnt)
print(maxValue)
