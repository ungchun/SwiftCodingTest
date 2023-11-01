import Foundation

let dx = [0, 0, 1, -1]
let dy = [1, -1, 0, 0]
let dlx = [1, 1, -1, -1]
let dly = [1, -1, 1, -1]

while true {
	let input = readLine()!.split(separator: " ").map {Int(String($0))!}
	let x = input[0]
	let y = input[1]
	
	if x == 0 && y == 0 {
		break
	}
	
	var map = Array(repeating: Array(repeating: 0, count: x), count: y)
	
	for i in 0..<y {
		map[i] = readLine()!.split(separator: " ").map{Int(String($0))!}
	}
	
	print(map)
	
	var cnt = 0
	
	for i in 0..<y {
		for j in 0..<x {
			if map[i][j] == 1 {
				map[i][j] = 0
				cnt += 1
				var stack = [(i, j)]
				while !stack.isEmpty {
					let node = stack.removeLast()
					
					for k in 0..<dx.count {
						let nextX = node.0 + dx[k]
						let nextY = node.1 + dy[k]
						
						if nextX < 0 || nextY < 0 || nextX >= y || nextY >= x {
							
						}
						
						else {
							if map[nextX][nextY] == 1 {
								map[nextX][nextY] = 0
								stack.append((nextX, nextY))
							}
						}
						
						let nextlX = node.0 + dlx[k]
						let nextlY = node.1 + dly[k]
						
						if nextlX < 0 || nextlY < 0 || nextlX >= y || nextlY >= x {
							
						}
						else {
							if map[nextlX][nextlY] == 1 {
								map[nextlX][nextlY] = 0
								stack.append((nextlX, nextlY))
							}
						}
					}
				}
			}
		}
	}
	print(cnt)
}
