import Foundation

let t = Int(readLine()!)!

let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]

for _ in 0..<t {
	let mnk = readLine()!.split(separator: " ").map{Int(String($0))!}
	let m = mnk[0], n = mnk[1], k = mnk[2]
	var map = Array(repeating: Array(repeating: 0, count: m), count: n)
	for _ in 0..<k {
		let input = readLine()!.split(separator: " ").map{Int(String($0))!}
		map[input[1]][input[0]] = 1
	}
	
	var cnt = 0
	for i in 0..<n {
		for j in 0..<m {
			if map[i][j] == 1 {
				map[i][j] = 0
				cnt += 1
				var queue = [(y: i, x: j)]
				var idx = 0
				while idx < queue.count {
					let now = queue[idx]
					idx += 1
					
					for k in 0..<4 {
						let nx = dx[k] + now.x
						let ny = dy[k] + now.y
						
						if nx < 0 || ny < 0 || nx >= m || ny >= n {
							continue
						} else {
							if map[ny][nx] == 1 {
								map[ny][nx] = 0
								queue.append((ny, nx))
							}
						}
					}
				}
			}
		}
	}
	print(cnt)
}
