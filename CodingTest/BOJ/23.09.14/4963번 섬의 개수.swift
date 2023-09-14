import Foundation

let dx = [0, 0, 1, -1]
let dy = [1, -1, 0, 0]
let dlx = [1, 1, -1, -1]
let dly = [1, -1, 1, -1]

while true {
	var cnt = 0
	let input = readLine()!.split(separator: " ").map {Int(String($0))!}
	let w = input[0]
	let h = input[1]
	
	if w == 0 && h == 0 {
		break
	}
	
	var map = Array(repeating: [Int](), count: h)
	
	for i in 0..<h {
		map[i] = readLine()!.split(separator: " ").map{Int(String($0))!}
	}
	
	for i in 0..<h {
		for j in 0..<w {
			if map[i][j] == 1 {
				map[i][j] = 0
				cnt += 1
				var stack = [(i, j)]
				
				while !stack.isEmpty {
					let node = stack.removeLast()
					
					for i in 0..<dx.count {
						let nextX = node.0 + dx[i]
						let nextY = node.1 + dy[i]
						
						if nextX < 0 || nextY < 0 || nextX >= h || nextY >= w {
							
						} else {
							if map[nextX][nextY] == 1 {
								map[nextX][nextY] = 0
								stack.append((nextX, nextY))
							}
						}
						
						let nextlX = node.0 + dlx[i]
						let nextlY = node.1 + dly[i]
						
						if nextlX < 0 || nextlX >= h || nextlY < 0 || nextlY >= w {
							
						} else {
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
