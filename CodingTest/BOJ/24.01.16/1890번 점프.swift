import Foundation

let n = Int(readLine()!)!
var graph = Array(repeating: [Int](), count: n)

for i in 0..<n {
	graph[i] = readLine()!.split(separator: " ").map{Int(String($0))!}
}

var cache = Array(repeating: Array(repeating: 0, count: n), count: n)
cache[0][0] = 1
for y in 0..<n {
	for x in 0..<n where graph[y][x] != 0 {
		let nx = x + graph[y][x]
		let ny = y + graph[y][x]
		if ny<n { cache[ny][x] += cache[y][x] }
		if nx<n { cache[y][nx] += cache[y][x] }
	}
}
print(cache[n-1].last!)
