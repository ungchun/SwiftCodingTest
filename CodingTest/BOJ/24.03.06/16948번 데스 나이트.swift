import Foundation

let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var r1c1 = (arr[0], arr[1])
var r2c2 = (arr[2], arr[3])
var result = -1
let directionArr = [(-2, -1), (-2, +1), (0, -2), (0, +2), (+2, -1), (+2, +1)]
var queue = [(r: r1c1.0, c: r1c1.1, cnt: 0)]
var idx = 0

var map = Array(repeating: Array(repeating: false, count: n), count: n)
map[r1c1.0][r1c1.1] = true

while idx < queue.count {
	let now = queue[idx]
	idx += 1
	
	if (now.r, now.c) == r2c2 {
		result = now.cnt
		break
	}
	
	for i in 0..<directionArr.count {
		
		let nx = directionArr[i].0+now.r
		let ny = directionArr[i].1+now.c
		
		if nx < 0 || ny < 0 || nx >= n || ny >= n {
			continue
		} else {
			if map[nx][ny] == false {
				map[nx][ny] = true
				queue.append((nx, ny, now.cnt+1))
			}
		}
	}
}

print(result)
