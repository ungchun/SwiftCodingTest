import Foundation

let dx = [0, 0, 1, -1]
let dy = [1, -1, 0, 0]

let T = Int(readLine()!)!
for _ in 0..<T {
	let MNK = readLine()!.split(separator: " ").map {Int(String($0))!}
	let M = MNK[0]
	let N = MNK[1]
	let K = MNK[2]
	
	var map = Array(repeating: Array(repeating: 0, count: M), count: N)
	
	for _ in 0..<K {
		let input = readLine()!.split(separator: " ").map {Int(String($0))!}
		let a = input[0]
		let b = input[1]
		map[b][a] = 1
	}
	
	var cnt = 0
	
	for i in 0..<N {
		for j in 0..<M {
			if map[i][j] == 1 {
				map[i][j] = 0
				cnt += 1
				
				var stack = [(i, j)]
				
				while !stack.isEmpty {
					let node = stack.removeFirst()
					
					for i in 0..<dx.count {
						let nextX = node.0 + dx[i]
						let nextY = node.1 + dy[i]
						
						if nextX < 0 || nextX >= N || nextY < 0 || nextY >= M {
							continue
						}
						
						if map[nextX][nextY] == 1 {
							map[nextX][nextY] = 0
							stack.append((nextX, nextY))
						}
					}
				}
			}
		}
	}
	print(cnt)
}
