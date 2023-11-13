import Foundation

func solution(_ X:String, _ Y:String) -> String {
	var dict: [Character: Int] = [:]
	
	Y.forEach { char in
		if dict[char] == nil {
			dict[char] = 1
		} else {
			dict[char] = dict[char]! + 1
		}
	}
	print(dict)
	var tempArr: [Int] = []
	X.forEach { char in
		if dict[char] != nil && dict[char] != 0 {
			tempArr.append(Int(String(char))!)
			dict[char] = dict[char]! - 1
		}
		print(tempArr)
		print(dict)
	}
	tempArr.sort(by: >)
	
	return tempArr.isEmpty ? "-1" : tempArr.first == 0 ? "0" : tempArr.map {String($0)}.joined()
}

print(solution("12321", "42531"))
print(solution("100", "2345"))
