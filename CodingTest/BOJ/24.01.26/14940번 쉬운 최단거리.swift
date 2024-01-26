import Foundation

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0], m = nm[1]
var map = Array(repeating: [Int](), count: n)
var resultMap = Array(repeating: Array(repeating: -1, count: m), count: n)
let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]

for i in 0..<n {
	map[i] = readLine()!.split(separator: " ").map{Int(String($0))!}
}
var target = (y: 0, x :0)
for i in 0..<n {
	for j in 0..<m {
		if map[i][j] == 2 {
			target = (i, j)
		} else if map[i][j] == 0 {
			resultMap[i][j] = 0
		}
	}
}

var queue: [(y: Int, x: Int, cnt: Int)] = [(target.y, target.x, 0)]
var idx = 0
while idx < queue.count {
	let now = queue[idx]
	idx += 1
	resultMap[now.y][now.x] = now.cnt
	
	for i in 0..<4 {
		let nx = dx[i] + now.x
		let ny = dy[i] + now.y
		
		if nx < 0 || ny < 0 || nx >= m || ny >= n {
			continue
		} else {
			if map[ny][nx] == 0 {
				resultMap[ny][nx] = 0
			} else if map[ny][nx] == 1 {
				map[ny][nx] = -1
				queue.append((ny, nx, now.cnt+1))
			}
		}
	}
}

resultMap.forEach { line in
	print(line.map{String($0)}.joined(separator: " "))
}
