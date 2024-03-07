import Foundation

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0], m = nm[1]
var map = [[Int]]()
for _ in 0..<n {
	map.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]

var result = 0

while !chk() {
	result += 1
	var temp = map
	for i in 0..<n {
		for j in 0..<m {
			if map[i][j] != 0 {
				var minus = 0
				for k in 0..<4 {
					let nx = dx[k] + j
					let ny = dy[k] + i
					
					if nx < 0 || ny < 0 || nx >= m || ny >= n {
						continue
					} else {
						if map[ny][nx] == 0 {
							minus += 1
						}
					}
				}
				temp[i][j] = temp[i][j] < minus ? 0 : temp[i][j] - minus
			}
		}
	}
	map = temp
}
print(result)

func chk() -> Bool {
	var zero = true
	var cnt = 0
	var temp = map
	
	for i in 0..<n {
		for j in 0..<m {
			if temp[i][j] != 0 {
				zero = false
				cnt += 1
				var queue = [(y: i, x: j)]
				var idx = 0
				
				while idx < queue.count {
					let now = queue[idx]
					idx += 1
					
					for k in 0..<4 {
						let nx = dx[k] + now.x
						let ny = dy[k] + now.y
						
						if nx < 0 || ny < 0 || nx >= m || ny >= n {
							continue
						} else {
							if temp[ny][nx] != 0 {
								temp[ny][nx] = 0
								queue.append((ny, nx))
							}
						}
					}
				}
			}
		}
	}
	if zero {
		result = 0
	}
	return zero || cnt >= 2 ? true : false
}
