import Foundation

func solution(_ myString:String, _ pat:String) -> String {
	
	var copyString = myString
	
	var temp = copyString.components(separatedBy: pat)
	
	temp.removeLast()
	
	temp = temp.map { val in
		if val == "" {
			return pat
		} else {
			return val
		}
	}

	var result = ""
	
	for i in 0..<temp.count {
		if temp[i] == pat {
			result += pat
			continue
		}
		result += temp[i]
		result += pat
	}

	return result
}
