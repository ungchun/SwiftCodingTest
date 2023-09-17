import Foundation

let T = Int(readLine()!)!
let movePoints = [(-1,-2), (-1,2), (1,-2), (1,2), (-2,-1), (-2,1), (2,-1), (2,1)]
var cnt = 0

for _ in 0..<T {
	let I = Int(readLine()!)!
	
	let start = readLine()!.split(separator: " ").map {Int(String($0))!}
	let end = readLine()!.split(separator: " ").map {Int(String($0))!}
	
	var queue = [(start[0], start[1])]
	var visited = Array(repeating: Array(repeating: -1, count: I), count: I)
	visited[start[0]][start[1]] = 0
	
	while (!queue.isEmpty) {
		let node = queue.removeFirst()

		for i in 0..<movePoints.count {
			let nextX = movePoints[i].0 + node.0
			let nextY = movePoints[i].1 + node.1
			if nextX >= 0 && nextY >= 0 && nextX < I && nextY < I {
				if visited[nextX][nextY] == -1  {
					visited[nextX][nextY] = visited[node.0][node.1] + 1
					queue.append((nextX, nextY))
				}
			}
		}
	}
	
	print(visited[end[0]][end[1]])
}
