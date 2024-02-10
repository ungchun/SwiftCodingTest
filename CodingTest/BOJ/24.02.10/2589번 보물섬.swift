import Foundation

let wh = readLine()!.split(separator: " ").map{Int(String($0))!}
let h = wh[0], w = wh[1]
var map = Array(repeating: [String](), count: h)
var chk = Array(repeating: Array(repeating: false, count: w), count: h)
var maxValue = Int.min

for i in 0..<h {
	let line = readLine()!.map{String($0)}
	map[i] = line
}

let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]

for i in 0..<h {
	for j in 0..<w {
		if map[i][j] == "L" {
			var visited = Array(repeating: Array(repeating: false, count: w), count: h)
			var queue = [(y: i, x: j, cnt: 0)]
			visited[i][j] = true
			var idx = 0
			while idx < queue.count {
				let now = queue[idx]
				idx += 1
				
				maxValue = max(maxValue, now.cnt)
				
				for k in 0..<4 {
					let nx = dx[k] + now.x
					let ny = dy[k] + now.y
					
					if nx < 0 || ny < 0 || nx >= w || ny >= h {
						continue
					} else {
						if !visited[ny][nx], map[ny][nx] == "L" {
							visited[ny][nx] = true
							queue.append((ny, nx, now.cnt+1))
						}
					}
				}
			}
		}
	}
}

print(maxValue)
