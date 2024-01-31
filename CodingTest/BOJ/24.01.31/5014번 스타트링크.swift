import Foundation

let line = readLine()!.split(separator: " ").map{Int(String($0))!}
let F = line[0], S = line[1], G = line[2], U = line[3], D = line[4]
var queue: [(now: Int, cnt: Int)] = []
var result = -1
var visited = Array(repeating: false, count: F+1)
queue.append((S, 0))
var idx = 0

while idx < queue.count {
	let now = queue[idx]
	idx += 1
	
	if now.now == G {
		result = now.cnt
		break
	}
	
	if now.now + U <= F {
		if !visited[now.now+U] {
			visited[now.now+U] = true
			queue.append((now.now+U, now.cnt+1))
		}
	}
	
	if now.now - D >= 1 {
		if !visited[now.now-D] {
			visited[now.now-D] = true
			queue.append((now.now-D, now.cnt+1))
		}
	}
}

if result == -1 {
	print("use the stairs")
} else {
	print(result)
}
