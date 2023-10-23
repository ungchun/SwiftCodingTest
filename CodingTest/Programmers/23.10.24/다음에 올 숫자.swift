import Foundation

func solution(_ common:[Int]) -> Int {
	var answer = 0
	
	if (common[1] - common[0]) == (common[2] - common[1]) {
		var b = common[1] - common[0]
		answer = common[common.count-1] + b
	} else if (common[1] / common[0]) == (common[2] / common[1]) {
		var b = common[1] / common[0]
		answer = common[common.count-1] * b
	}
	
	return answer
}
