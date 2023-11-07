import Foundation

let T = Int(readLine()!)!
let movePoints = [(-1,-2), (-1,2), (1,-2), (1,2), (-2,-1), (-2,1), (2,-1), (2,1)]

for _ in 0..<T {
	let N = Int(readLine()!)!
	let first = readLine()!.split(separator: " ").map{Int(String($0))!}
	let target = readLine()!.split(separator: " ").map{Int(String($0))!}
	
	var queue = [(first[0], first[1])]
	var visited = Array(repeating: Array(repeating: -1, count: N), count: N)
	visited[first[0]][first[1]] = 0
	
	while !queue.isEmpty {
		let node = queue.removeFirst()
		
		for i in 0..<movePoints.count {
			let nextX = movePoints[i].0 + node.0
			let nextY = movePoints[i].1 + node.1
			
			if nextX >= 0 && nextY >= 0 && nextX < N && nextY < N {
				if visited[nextX][nextY] == -1 {
					visited[nextX][nextY] = visited[node.0][node.1] + 1
					queue.append((nextX, nextY))
				}
			}
		}
	}
	print(visited[target[0]][target[1]])
}
