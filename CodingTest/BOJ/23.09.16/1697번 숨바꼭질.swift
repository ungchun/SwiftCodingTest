import Foundation

let input = readLine()!.split(separator: " ").map {Int(String($0))!}
let N = input[0]
let K = input[1]

var visited = Array(repeating: false, count: 100001)
var queue = [(N, 0)]

while !queue.isEmpty {
	let temp = queue.removeFirst()
	let place = temp.0
	let depth = temp.1
	
	if place == K {
		print("\(depth)")
		break
	}
	
	for i in 0..<3 {
		var nextPlace = 0
		
		switch i {
		case 0:
			nextPlace = place - 1
		case 1:
			nextPlace = place + 1
		default:
			nextPlace = place * 2
		}
		
		if nextPlace >= 0, nextPlace <= 100000, !visited[nextPlace] {
			visited[nextPlace] = true
			queue.append((nextPlace, depth + 1))
		}
	}
}
