import Foundation

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0], m = nm[1]
var map = Array(repeating: [Int](), count: n)
for i in 0..<n {
	map[i] = readLine()!.split(separator: " ").map{Int(String($0))!}
}

var cnt = 0
var temp = 0

let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]

while true {
	// 덩어리 찾기
	temp = 0
	var tempMap = map
	var visited = Array(repeating: Array(repeating: false, count: m), count: n)
	for i in 0..<n {
		for j in 0..<m {
			if tempMap[i][j] > 0 {
				temp += 1
				var queue = [(y: i, x: j)]
				var idx = 0
				visited[i][j] = true
				while idx < queue.count {
					let now = queue[idx]
					idx += 1
					
					for k in 0..<4 {
						let nx = dx[k] + now.x
						let ny = dy[k] + now.y
						
						if nx < 0 || ny < 0 || nx >= m || ny >= n {
							continue
						} else {
							if !visited[ny][nx], tempMap[ny][nx] != 0 {
								visited[ny][nx] = true
								queue.append((ny, nx))
								tempMap[ny][nx] = 0
							}
						}
					}
				}
			}
		}
	}
	if temp >= 2 {
		break
	} else if temp == 0 {
		break
	}
		
	cnt += 1
	tempMap = Array(repeating: Array(repeating: 0, count: m), count: n)
	
	// 녹이기
	for i in 0..<n {
		for j in 0..<m {
			if map[i][j] != 0 {
				for k in 0..<4 {
					let x = dx[k] + i
					let y = dy[k] + j
					if map[x][y] == 0 {
						tempMap[i][j] += 1
					}
				}
			}
		}
	}

	for i in 0..<n {
		for j in 0..<m {
			map[i][j] = map[i][j] - tempMap[i][j] < 0 ? 0 : map[i][j] - tempMap[i][j]
		}
	}

}

if temp >= 2 {
	print(cnt)
} else {
	print(0)
}
