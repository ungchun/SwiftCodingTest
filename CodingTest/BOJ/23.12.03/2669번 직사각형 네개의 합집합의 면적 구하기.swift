import Foundation

var map = Array(repeating: Array(repeating: false, count: 100), count: 100)

for _ in 0..<4 {
	let input = readLine()?.split(separator: " ").map {Int(String($0))!}
	for i in input![0]..<input![2] {
		for j in input![1]..<input![3] {
			map[i][j] = true
		}
	}
}

print(map.flatMap { $0 }.filter { $0 == true }.count)
