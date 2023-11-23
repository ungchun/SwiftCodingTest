import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }
let n = nm[0], m = nm[1]

var a: [[Int]] = []
var b: [[Int]] = []

for _ in 0..<n {
	a.append(readLine()!.split(separator: " ").map { Int($0)! })
}

let mk = readLine()!.split(separator: " ").map { Int($0)! }
let k = mk[1]

for _ in 0..<m {
	b.append(readLine()!.split(separator: " ").map { Int($0)! })
}

var answer = Array(repeating: [Int](repeating: 0, count: k), count: n)

for i in 0..<n {
	for y in 0..<k {
		for j in 0..<m {
			answer[i][y] += a[i][j] * b[j][y]
		}
	}
}

answer.forEach { line in
	line.forEach { print($0, terminator: " ") }
	print()
}
