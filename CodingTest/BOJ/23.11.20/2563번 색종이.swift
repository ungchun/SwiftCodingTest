import Foundation

var paper = Array(repeating: Array(repeating: false, count: 101), count: 101)

let n = Int(readLine()!)!

for _ in 0..<n {
	let split = readLine()!.split(separator: " ").map {Int(String($0))!}
	for i in split[0]..<split[0]+10 {
		for j in split[1]..<split[1]+10 {
			paper[i][j] = true
		}
	}
}

print(paper.flatMap { $0 }.filter {$0 == true}.count)
