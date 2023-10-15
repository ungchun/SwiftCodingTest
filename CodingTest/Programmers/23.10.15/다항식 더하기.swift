import Foundation

func solution(_ polynomial:String) -> String {
	
	let split = polynomial.split(separator: "+")

	var xCnt = 0
	var notXCnt = 0
	
	split.forEach { val in
		let trimString = String(val).trimmingCharacters(in: [" "])
		if trimString.contains("x") {
			let splitData = String(trimString).split(separator: "x")
			if splitData.isEmpty {
				xCnt += 1
			} else {
				xCnt += Int(splitData.first!)!
			}
		} else {
			notXCnt += Int(trimString)!
		}
	}
	
	var result = ""

	if xCnt != 0 {
		if xCnt == 1 {
			result += String("x")
		} else {
			result += String("\(xCnt)x")
		}
	}
	
	if notXCnt != 0 {
		if result == "" {
			result += String("\(notXCnt)")
		} else {
			result += String(" + \(notXCnt)")
		}
	}
	
	return result
}
