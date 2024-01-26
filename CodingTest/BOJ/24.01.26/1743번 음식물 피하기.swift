import Foundation

let nmk = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nmk[0], m = nmk[1], k = nmk[2]
var map = Array(repeating: Array(repeating: 0, count: m), count: n)
var chk: [(y: Int, x: Int)] = []

for _ in 0..<k {
	let line = readLine()!.split(separator: " ").map{Int(String($0))!}
	chk.append((line[0]-1, line[1]-1))
	map[line[0]-1][line[1]-1] = 1
}

let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]
var maxValue = 0

chk.forEach {
	var queue = [$0]
	var idx = 0
	var cnt = 0
	while idx < queue.count {
		let now = queue[idx]
		idx += 1
		
		for i in 0..<4 {
			let nx = dx[i] + now.x
			let ny = dy[i] + now.y
			
			if nx < 0 || ny < 0 || nx >= m || ny >= n {
				continue
			} else {
				if map[ny][nx] == 1 {
					map[ny][nx] = 0
					queue.append((ny, nx))
					cnt += 1
				}
			}
		}
	}

	maxValue = max(maxValue, cnt)
}

print(maxValue)
