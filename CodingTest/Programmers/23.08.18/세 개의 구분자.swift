import Foundation

func solution(_ myStr:String) -> [String] {
	
	var result: [String] = []
	var tempVal = ""
	
	myStr.forEach { char in
		if char != "a" && char != "b" && char != "c" {
			tempVal += String(char)
		} else {
			if tempVal != "" {
				result.append(tempVal)
			}
			tempVal = ""
		}
	}
	
	if tempVal != "" {
		result.append(tempVal)
	}
	
	if result.isEmpty {
		result.append("EMPTY")
	}
	
	return result
}

print(solution("baconlettucetomato"))
