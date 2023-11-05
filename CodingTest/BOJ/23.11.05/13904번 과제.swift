import Foundation

let N = Int(readLine()!)!

var works = [(dueDate: Int, score: Int)]()
var check = Array(repeating: 0, count: 1000)

for _ in 0..<N {
	let input = readLine()!.split(separator: " ").map {Int($0)!}
	works.append((input[0], input[1]))
}
works.sort(by: { $0.score > $1.score })
var timeTable = [Bool](repeating: false, count: 1001)
var score = 0

for work in works {
	var dueDate = work.dueDate
	while timeTable[dueDate], dueDate > 0 {
		dueDate -= 1
	}
	
	if dueDate != 0 {
		timeTable[dueDate] = true
		score += work.score
	}
}
print(score)
