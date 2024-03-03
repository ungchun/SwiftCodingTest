import Foundation

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0], m = nm[1]
var map = [[String]]()
for _ in 0..<m {
	map.append(readLine()!.map{String($0)})
}

var wValue = 0
var bValue = 0
var chk = ""

let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]

for i in 0..<m {
	for j in 0..<n {
		if map[i][j] != "C" {
			chk = map[i][j] == "W" ? "W" : "B"
			map[i][j] = "C"
			var queue = [(y: i, x: j)]
			var idx = 0
			while idx < queue.count {
				let now = queue[idx]
				idx += 1
				
				for k in 0..<4 {
					let nx = dx[k] + now.x
					let ny = dy[k] + now.y
					
					if nx < 0 || ny < 0 || nx >= n || ny >= m {
						continue
					} else {
						if chk == map[ny][nx] {
							map[ny][nx] = "C"
							queue.append((ny, nx))
						}
					}
				}
			}
			if chk == "W" {
				wValue += (idx*idx)
			} else {
				bValue += (idx*idx)
			}
		}
	}
}


print("\(wValue) \(bValue)")
