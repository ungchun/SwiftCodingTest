import Foundation

let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var graph = Array(repeating: [Int](), count: n)
var start = 0

for i in 0..<n {
	if arr[i] == -1 {
		start = i
	} else {
		graph[arr[i]].append(i)
	}
}

var idx = 0
var remove = Int(readLine()!)!
graph[remove] = []
var stack = [graph[start]]
var cnt = 0
idx = 0
while idx < stack.count {
	let now = stack[idx]
	idx += 1
	
	now.forEach { num in
		if graph[num].isEmpty {
			if num != remove {
				cnt += 1
			}
		} else if graph[num].contains(remove), graph[num].count == 1 {
			cnt += 1
		} else {
			stack.append(graph[num])
		}
	}
}
if cnt == 0, !graph[start].isEmpty {
	print(1)
} else {
	print(cnt)
}
