import Foundation

func solution(_ myString: String, _ pat: String) -> Int {
	var count = 0
	let stringLength = myString.count
	let patternLength = pat.count
	
	for i in 0...(stringLength - patternLength) {
		let startIndex = myString.index(myString.startIndex, offsetBy: i)
		let endIndex = myString.index(startIndex, offsetBy: patternLength)
		let substring = myString[startIndex..<endIndex]
		
		print(startIndex)
		print(endIndex)
		print()
		
		if substring == pat {
			count += 1
		}
	}
	
	return count
}

print(solution("banana", "ana"))
