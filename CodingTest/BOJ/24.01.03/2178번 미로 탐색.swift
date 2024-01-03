import Foundation

let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0], m = nm[1]
var map = Array(repeating: [Int](), count: n)
var distance = Array(repeating: Array(repeating: 0, count: m), count: n)

for i in 0..<n {
	let line = readLine()!
	map[i] = line.map{Int(String($0))!}
}

var queue = [(0, 0)]
var visited: [(Int, Int)] = [(0, 0)]

while !queue.isEmpty {
	let now = queue.removeFirst()
	
	for i in 0..<4 {
		let ny = now.0 + dy[i]
		let nx = now.1 + dx[i]
		
		if ny < 0 || nx < 0 || ny >= n || nx >= m {
			continue
		} else {
			if !visited.contains(where: { $0 == (ny, nx) }), map[ny][nx] == 1 {
				visited.append((ny, nx))
				distance[ny][nx] = distance[now.0][now.1] + 1
				queue.append((ny, nx))
			}
		}
	}
}

print(distance[n-1][m-1]+1)
