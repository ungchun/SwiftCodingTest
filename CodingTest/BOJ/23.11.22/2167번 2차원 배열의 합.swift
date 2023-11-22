import Foundation

// 입력 받기
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0], M = input[1]

// 2차원 배열에 입력 저장하기
var matrix = [[Int]]()
for _ in 0..<N {
	matrix.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}

// 각 case 별로 이중 반복문으로 합 구하기
let T = Int(readLine()!)!
for _ in 0..<T {
	let line = readLine()!.split(separator: " ").map { Int(String($0))! }
	let i = line[0], j = line[1], x = line[2], y = line[3]
	var sum = 0
	for r in i...x {
		for c in j...y {
			sum += matrix[r - 1][c - 1]
		}
	}
	print(sum)
}
