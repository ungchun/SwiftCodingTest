import Foundation

let line = readLine()!.split(separator: " ").map{Int(String($0))!}
var f = line[0], s = line[1], g = line[2], u = line[3], d = line[4]
var cnt = 0
var queue: [(Int, Int)] = []
var visited = Array(repeating: false, count: f+1)
var result = -1
queue.append((s, 0))

while !queue.isEmpty {
	let now = queue.removeFirst()
	if now.0 == g {
		result = now.1
		break
	}
	
	if now.0 + u <= f {
		if !visited[now.0+u] {
			visited[now.0+u] = true
			queue.append((now.0 + u, now.1 + 1))
		}
	}
	
	if now.0 - d >= 1 {
		if !visited[now.0-d] {
			visited[now.0-d] = true
			queue.append((now.0 - d, now.1 + 1))
		}
	}
}
if result != -1 {
		print(result)
} else {
		print("use the stairs")
}
