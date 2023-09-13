import Foundation

let T = Int(readLine()!)!

let dx = [0, 0, 1, -1]
let dy = [1, -1, 0, 0]

for _ in 0..<T {
	let input = readLine()!.split(separator: " ").map {Int(String($0))!}
	let M = input[0]
	let N = input[1]
	let K = input[2]
	
	var map = Array(repeating: Array(repeating: 0, count: M), count: N)
	for _ in 0..<K {
		let input = readLine()!.split(separator: " ").map {Int(String($0))!}
		map[input[1]][input[0]] = 1
	}

	var answer = 0
	
	for i in 0..<N {
		for j in 0..<M {
			if map[i][j] == 1 {
				map[i][j] = 0
				answer += 1
				var stack = [(i, j)]
				
				while !stack.isEmpty {
					let node = stack.removeLast()
					
					for i in 0..<dx.count {
						let nextX = node.0 + dx[i]
						let nextY = node.1 + dy[i]
						
						if nextX < 0 || nextY < 0 || nextX >= N || nextY >= M {
							continue
						} else {
							if map[nextX][nextY] == 1 {
								map[nextX][nextY] = 0
								stack.append((nextX, nextY))
							}
						}
					}
				}
			}
		}
	}
	print(answer)
}
