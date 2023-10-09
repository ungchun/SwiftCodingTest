import Foundation

func solution(_ picture:[String], _ k:Int) -> [String] {
	
	var arr: [String] = []
	
	picture.forEach { str in
		var temp = Array(str)
		var tempString = ""
		temp.forEach { char in
			tempString += String(repeating: char, count: k)
		}
		arr.append(tempString)
	}

	var result: [String] = []
	
	arr.forEach { str in
		for _ in 0..<k {
			result.append(str)
		}
	}

	return result
}

print(solution(["x.x", ".x.", "x.x"], 3))
