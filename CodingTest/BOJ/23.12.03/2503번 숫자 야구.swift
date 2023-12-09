import Foundation

extension Int {
	func checkIfValid() -> Bool {
		let array = String(self).map { Int(String($0))! }
		let noZero = array.contains(0) ? false : true
		let noOverlap = Set(array).count != array.count ? false : true
		return noZero && noOverlap
	}
}

let N = Int(readLine()!)!
var questions = [Int]()
var ansArray = [(Int, Int)]()

for _ in 0..<N {
	let input = readLine()!.split(separator: " ").map { Int(String($0))! }
	questions.append(input[0])
	ansArray.append((input[1], input[2]))
}

var result = [Int]()

for n in 123...987 {
	guard n.checkIfValid() == true else { continue }
	var chk1 = false
	for i in 0..<questions.count {
		let nArray = Array(String(n))
		let iArray = Array(String(questions[i]))
		var strike = 0
		var ball = 0
		
		for j in 0..<nArray.count {
			guard nArray.contains(iArray[j]) else { continue }
			if j == nArray.firstIndex(of: iArray[j]) {
				strike += 1
			} else {
				ball += 1
			}
		}
		let chk = (strike, ball)
		if chk != ansArray[i] {
			chk1 = true
			break
		}
	}
	if !chk1 {
		result.append(n)
	}
}

//print(result)
print(result.count)
