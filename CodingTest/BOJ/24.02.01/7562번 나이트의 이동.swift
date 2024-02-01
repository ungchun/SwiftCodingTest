import Foundation

let movePoints = [(-1,-2), (-1,2), (1,-2), (1,2), (-2,-1), (-2,1), (2,-1), (2,1)]
var t = Int(readLine()!)!

for _ in 0..<t {
	let n = Int(readLine()!)!
	let now = readLine()!.split(separator: " ").map{Int(String($0))!}
	let target = readLine()!.split(separator: " ").map{Int(String($0))!}
	var idx = 0
	var queue: [(y: Int, x: Int, cnt: Int)] = [(now[0], now[1], 0)]
	var visited = Array(repeating: Array(repeating: -1, count: n), count: n)
	visited[now[0]][now[1]] = 0
	
	while idx < queue.count {
		let now = queue[idx]
		idx += 1
		if [now.y, now.x] == target {
			print(now.cnt)
			break
		}
		for i in 0..<movePoints.count {
			let ny = now.y + movePoints[i].0
			let nx = now.x + movePoints[i].1
			
			if ny < 0 || nx < 0 || ny >= n || nx >= n {
				continue
			} else {
				if visited[ny][nx] == -1 {
					visited[ny][nx] = 0
					queue.append((ny, nx, now.cnt+1))
				}
			}
		}
	}
}
