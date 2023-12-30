import Foundation

let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]
let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let x = nm[1], y = nm[0]
let line = readLine()!.split(separator: " ").map{Int(String($0))!}
var now = (y: line[0], x: line[1])
var coordinate = line[2]
var map = Array(repeating: [Int](), count: y)

for i in 0..<y {
	map[i] = readLine()!.split(separator: " ").map{Int(String($0))!}
}

var cnt = 0
var exitChk = false
var breakChk = false

while true {
	breakChk = false
	// 1
	if map[now.y][now.x] == 0 {
		map[now.y][now.x] = 2
		cnt += 1
	}

	for i in 0..<4 {
		let ny = now.y + dy[i]
		let nx = now.x + dx[i]
		// 3
		if map[ny][nx] == 0 {
			breakChk = true
			break
		}
	}
	
	if breakChk {
		// 반시계 90도 회전
		if coordinate == 0 {
			coordinate = 4
		}
		coordinate -= 1
		switch coordinate {
		case 0: // 북
			if map[now.y-1][now.x] == 0 {
				now = (now.y-1, now.x)
				continue
			}
		case 1: // 동
			if map[now.y][now.x+1] == 0 {
				now = (now.y, now.x+1)
				continue
			}
		case 2: // 남
			if map[now.y+1][now.x] == 0 {
				now = (now.y+1, now.x)
				continue
			}
		case 3: // 서
			if map[now.y][now.x-1] == 0 {
				now = (now.y, now.x-1)
				continue
			}
		default:
			break
		}
	} else {
		switch coordinate {
		case 0: // 북
			if map[now.y+1][now.x] != 1 {
				now = (now.y+1, now.x)
				continue
			} else {
				exitChk = true
			}
		case 1: // 동
			if map[now.y][now.x-1] != 1 {
				now = (now.y, now.x-1)
				continue
			} else {
				exitChk = true
			}
		case 2: // 남
			if map[now.y-1][now.x] != 1 {
				now = (now.y-1, now.x)
				continue
			} else {
				exitChk = true
			}
		case 3: // 서
			if map[now.y][now.x+1] != 1 {
				now = (now.y, now.x+1)
				continue
			} else {
				exitChk = true
			}
		default:
			break
		}
	}
	
	if exitChk {
		break
	}
}

print(cnt)
