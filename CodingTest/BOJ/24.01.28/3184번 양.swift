import Foundation

let rc = readLine()!.split(separator: " ").map{Int(String($0))!}
let r = rc[0], c = rc[1]
var map = Array(repeating: [String](), count: r)

for i in 0..<r {
	map[i] = readLine()!.map{String($0)}
}

let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]
var resultV = 0
var resultO = 0

var visitedMap = Array(repeating: Array(repeating: false, count: c), count: r)

for i in 0..<r {
	for j in 0..<c {
		if visitedMap[i][j] == false {
			if map[i][j] == "v" || map[i][j] == "o" {
				visitedMap[i][j] = true
				var queue: [(y: Int, x: Int)] = []
				queue.append((i, j))
				var vCnt = 0
				var oCnt = 0
				var idx = 0
				while idx < queue.count {
					let now = queue[idx]
					idx += 1
					
					if map[now.y][now.x] == "v" {
						vCnt += 1
					} else if map[now.y][now.x] == "o" {
						oCnt += 1
					}
					
					for k in 0..<4 {
						let nx = dx[k] + now.x
						let ny = dy[k] + now.y
						
						if nx < 0 || ny < 0 || nx >= c || ny >= r || map[ny][nx] == "#" {
							continue
						} else {
							if !visitedMap[ny][nx] {
								visitedMap[ny][nx] = true
								queue.append((ny, nx))
							}
						}
					}
				}
				
				if vCnt >= oCnt {
					oCnt = 0
				} else {
					vCnt = 0
				}
				resultV += vCnt
				resultO += oCnt

			}
		}
	}
}

print("\(resultO) \(resultV)")
