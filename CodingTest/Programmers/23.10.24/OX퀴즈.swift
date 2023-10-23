import Foundation

func solution(_ quiz:[String]) -> [String] {
	
	var result: [String] = []
	
	quiz.forEach { val in
		let splitVal = val.split(separator: " ")
		let first = Int(splitVal[0])!
		let second = Int(splitVal[2])!
		
		if splitVal[1] == "+" {
			if first + second == Int(splitVal[4])! {
				result.append("O")
			} else {
				result.append("X")
			}
		} else {
			if first - second == Int(splitVal[4])! {
				result.append("O")
			} else {
				result.append("X")
			}
		}
	}
	return result
}
