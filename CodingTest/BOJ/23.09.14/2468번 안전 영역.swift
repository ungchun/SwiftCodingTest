import Foundation

let dx = [0, 0, 1, -1]
let dy = [1, -1, 0, 0]

let N = Int(readLine()!)!

var map = Array(repeating: Array(repeating: 0, count: N), count: N)

var max = 0

for i in 0..<N {
	let row = readLine()!.split(separator: " ").map {Int(String($0))!}
	map[i] = row
	max = max < row.max()! ? row.max()! : max
}

var result: [Int] = []

for i in 0...100 {
	if i == max {
		break
	}
	
	DFS(start: i)
}

func DFS(start: Int) {
	var tempMap = map
	var cnt = 0
	for i in 0..<N {
		for j in 0..<N {
			if tempMap[i][j] > start {
				tempMap[i][j] = -1
				var stack = [(i, j)]
				cnt += 1
				while !stack.isEmpty {
					let node = stack.removeLast()
					
					for i in 0..<dx.count {
						let nextX = node.0 + dx[i]
						let nextY = node.1 + dy[i]
						
						if nextX < 0 || nextY < 0 || nextX >= N || nextY >= N {
							continue
						} else {
							if tempMap[nextX][nextY] > start {
								tempMap[nextX][nextY] = -1
								stack.append((nextX, nextY))
							}
						}
					}
				}
			}
		}
	}
	result.append(cnt)
}

print(result.max()!)
