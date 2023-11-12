import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
	var dict: [String: Int] = [:]
	
	for i in 0..<name.count {
		dict[name[i]] = yearning[i]
	}
//	print(dict)
	
	var answer: [Int] = []
	
	photo.forEach { values in
		var result = 0
		values.forEach { value in
			if dict.keys.contains(value) {
				result += dict[value]!
			}
		}
		answer.append(result)
	}
	
	return answer
}

print(solution(["may", "kein", "kain", "radi"], [5, 10, 1, 3], [["may", "kein", "kain", "radi"],["may", "kein", "brin", "deny"], ["kon", "kain", "may", "coni"]]))
