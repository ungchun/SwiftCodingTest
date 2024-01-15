import Foundation

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0], m = nm[1]
var map: [[Int]] = [[Int](repeating: 0, count: n + 1)]

for _ in 0..<n {
	map.append([0] + readLine()!.split(separator: " ").map { Int($0)! })
}

for y in 1...n {
	for x in 1...n {
		map[y][x] += map[y - 1][x] + map[y][x - 1] - map[y - 1][x - 1]
	}
}

for _ in 0..<m {
	let input = readLine()!.split(separator: " ").map{Int(String($0))!}
	let y1 = input[0], x1 = input[1], y2 = input[2], x2 = input[3]
	print(map[y2][x2] - map[y1 - 1][x2] - map[y2][x1 - 1] + map[y1 - 1][x1 - 1])
}
