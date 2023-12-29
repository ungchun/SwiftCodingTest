import Foundation

let mnh = readLine()!.split(separator: " ").map{Int(String($0))!}
let m = mnh[0], n = mnh[1], h = mnh[2]

var arr = Array(repeating: [[Int]](), count: h)

for i in 0..<h {
	for _ in 0..<n {
		arr[i].append(readLine()!.split(separator: " ").map{Int(String($0))!})
	}
}

var tomato: [(h: Int, n: Int, m: Int, day: Int)] = []

for i in 0..<h {
	for j in 0..<n {
		for k in 0..<m {
			if arr[i][j][k] == 1 {
				tomato.append((i, j, k, 0))
			}
		}
	}
}

var idx = 0

let dh = [1, -1, 0, 0, 0, 0]
let dx = [0, 0, 1, -1, 0, 0]
let dy = [0, 0, 0, 0, 1, -1]

var day = 0
while idx < tomato.count {
	let node = tomato[idx]
	idx += 1

	for j in 0..<6 {
		let nh = node.h + dh[j]
		let ny = node.n + dy[j]
		let nx = node.m + dx[j]

		if nh < 0 || ny < 0 || nx < 0 || ny >= n || nx >= m || nh >= h {
			continue
		} else {
			if arr[nh][ny][nx] == 0 {
				arr[nh][ny][nx] = 1
				tomato.append((nh, ny, nx, node.day+1))
				day = node.day+1
			}
		}
	}
}

let flat = arr.flatMap { $0 }
for i in 0..<flat.count {
	if flat[i].contains(0) {
		day = -1
		break
	}
}

print(day)
