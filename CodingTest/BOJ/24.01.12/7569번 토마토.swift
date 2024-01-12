import Foundation

let dh = [1, -1, 0, 0, 0, 0]
let dx = [0, 0, 1, -1, 0 ,0]
let dy = [0, 0, 0, 0, 1, -1]

let mnh = readLine()!.split(separator: " ").map{Int(String($0))!}
let m = mnh[0], n = mnh[1], h = mnh[2]

var arr = Array(repeating: Array(repeating: [Int](), count: n), count: h)

for i in 0..<h {
	for j in 0..<n {
		arr[i][j] = readLine()!.split(separator: " ").map{Int(String($0))!}
	}
}

var tomatos: [(h: Int, y: Int, x: Int, day: Int)] = []
for i in 0..<h {
	for j in 0..<n {
		for k in 0..<m {
			if arr[i][j][k] == 1 {
				tomatos.append((i, j, k, 0))
			}
		}
	}
}
var idx = 0
var day = 0
while idx < tomatos.count {
	let now = tomatos[idx]
	idx += 1
	for j in 0..<6 {
		let nh = dh[j] + now.h
		let ny = dy[j] + now.y
		let nx = dx[j] + now.x
		
		if nh < 0 || ny < 0 || nx < 0 || nh >= h || ny >= n || nx >= m {
			continue
		} else {
			if arr[nh][ny][nx] == 0 {
				arr[nh][ny][nx] = 1
				tomatos.append((nh, ny, nx, now.day+1))
				day = now.day+1
			}
		}
	}
}

var chk = false
for i in 0..<h {
	for j in 0..<n {
		if arr[i][j].contains(0) {
			chk = true
			break
		}
	}
}

if chk {
	print(-1)
} else {
	print(day)
}
