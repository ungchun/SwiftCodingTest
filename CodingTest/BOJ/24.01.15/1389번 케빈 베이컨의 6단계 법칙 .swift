import Foundation

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0], m = nm[1]
var arr = Array(repeating: [Int](), count: n+1)
for _ in 0..<m {
	let line = readLine()!.split(separator: " ").map{Int(String($0))!}
	arr[line[0]].append(line[1])
	arr[line[1]].append(line[0])
}

var minValue = Int.max
var minPerson = 0
var temp = Array(repeating: 0, count: n+1)
for i in 1...n {
	var queue: [([Int], Int)] = []
	queue.append((arr[i], 1))
	var cnt = 0
	var visited = Array(repeating: 0, count: n+1)
	visited[i] = -1
	while !queue.isEmpty {
		let now = queue.removeFirst()
		
		now.0.forEach { value in
			if visited[value] == 0 {
				visited[value] = -1
				queue.append((arr[value], now.1+1))
				cnt += now.1
			}
		}
	}
	if minValue > cnt {
		minValue = cnt
		minPerson = i
	}
}
print(minPerson)
