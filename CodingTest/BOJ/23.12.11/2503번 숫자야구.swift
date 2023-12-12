import Foundation

let n = Int(readLine()!)!
var question = [Int]()
var answer = [(Int, Int)]()

for _ in 0..<n {
	let input = readLine()!.split(separator: " ").map{Int(String($0))!}
	question.append(input[0])
	answer.append((input[1], input[2]))
}

var result = 0
for i in 123...987 {
	let chkArray = String(i).map {Int(String($0))!}
	if chkArray.contains(0) || Set(chkArray).count != chkArray.count {
		continue
	}
	
	var equal = true
	
	for j in 0..<n {
		let aArray = String(i).map { Int(String($0))! }
		let bArray = String(question[j]).map { Int(String($0))! }
		var strike = 0
		var ball = 0
		for k in 0..<3 {
			// 자릿수 체크
			guard aArray.contains(bArray[k]) else { continue }
			if k == aArray.firstIndex(of: bArray[k]) {
				strike += 1
			} else {
				ball += 1
			}
		}
		
		if answer[j] != (strike, ball) {
			equal = false
		}
	}
	
	if equal {
		result += 1
	}
}

print(result)
