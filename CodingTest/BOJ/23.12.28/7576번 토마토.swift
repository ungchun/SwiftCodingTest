import Foundation

let mn = readLine()!.split(separator: " ").map{Int(String($0))!}
let m = mn[0], n = mn[1]

var map = Array(repeating: [Int](), count: n)

for i in 0..<n {
	map[i] = readLine()!.split(separator: " ").map{Int(String($0))!}
}

// 익은 토마토 좌표
var tomato: [(Int, Int, Int)] = []
for i in 0..<n {
	for j in 0..<m {
		if map[i][j] == 1 {
			tomato.append((i, j, 0))
		}
	}
}

var day = 0
let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]

var idx = 0
while idx < tomato.count {
	let singleTomato = tomato[idx]
	idx += 1
	for j in 0..<4 {
		let ny = singleTomato.0 + dy[j]
		let nx = singleTomato.1 + dx[j]
		let nextDay = singleTomato.2 + 1
		if ny < 0 || nx < 0 || ny >= n || nx >= m {
			continue
		} else {
			if map[ny][nx] == 0 {
				map[ny][nx] = 1
				tomato.append((ny,nx,nextDay))
				day = nextDay
			}
		}
	}
}

for i in 0..<n {
	if map[i].contains(0) {
		day = -1
		break
	}
}

print(day)
