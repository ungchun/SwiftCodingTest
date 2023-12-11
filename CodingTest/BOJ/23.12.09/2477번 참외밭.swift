import Foundation

let k = Int(readLine()!)!
var lines: [(dir: Int, len:Int)] = []
var dict: [Int: Int] = [:]

for _ in 0..<6 {
	let input = readLine()!.split(separator: " ").map {Int(String($0))!}
	let dir = input[0], len = input[1]
	lines.append((dir, len))
	dict[dir, default: 0] +=  1
}

var maxArea = 1
var minArea = 1

for i in 0..<6 {
	if dict[lines[i].dir]! == 1 {
		maxArea *= lines[i].len
		continue
	}
	if lines[i].dir == lines[(i + 2) % 6].dir {
		minArea *= lines[(i+1) % 6].len
	}
}

print((maxArea - minArea) * k)
