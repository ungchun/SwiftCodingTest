import Foundation

let nmr = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nmr[0], m = nmr[1], r = nmr[2]
var arr = Array(repeating: [Int](), count: n+1)
var result = Array(repeating: -1, count: n)

for _ in 0..<m {
	let input = readLine()!.split(separator: " ").map{Int(String($0))!}
	arr[input[0]].append(input[1])
	arr[input[1]].append(input[0])
}

var visited = Array(repeating: false, count: n+1)
var queue = [(root: r, cnt: 0)]
var idx = 0
result[r-1] = 0
visited[r] = true

while idx < queue.count {
	let now = queue[idx]
	idx += 1
	
	arr[now.root].forEach { value in
		if !visited[value] {
			visited[value] = true
			queue.append((value, now.cnt + 1))
			result[value-1] = now.cnt+1
		}
	}
}

result.forEach { num in
	print(num)
}
