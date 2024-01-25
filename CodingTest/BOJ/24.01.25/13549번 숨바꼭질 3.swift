import Foundation

let nk = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nk[0], k = nk[1]
var queue = [(now: Int, value: Int)]()
queue.append((n, 0))
var visited = Array(repeating: false, count: 100001)
visited[n] = true
var front = 0

while front < queue.count {
	let now = queue[front]
	front += 1
	if now.now == k {
		print(now.value)
		break
	} else {
		if now.0 * 2 < 100001 && !visited[now.0 * 2]{
			visited[now.0 * 2] = true
			queue.append((now.0 * 2, now.1))
		}
		
		if now.0 - 1 >= 0 && !visited[now.0 - 1]{
			visited[now.0 - 1] = true
			queue.append((now.0 - 1, now.1 + 1))
		}
		
		if now.0 + 1 < 100001 && !visited[now.0 + 1]{
			visited[now.0 + 1] = true
			queue.append((now.0 + 1, now.1 + 1))
		}
	}
}
