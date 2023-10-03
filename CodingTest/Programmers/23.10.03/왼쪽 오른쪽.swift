import Foundation

func solution(_ str_list:[String]) -> [String] {
	var result: [String] = []
	var chk = false
	
	for i in 0..<str_list.count {
		if chk == false && str_list[i] == "l" {
			chk = true
			break
		}
		result.append(str_list[i])
		if chk == false && str_list[i] == "r" {
			chk = true
			result = []
		}
	}
	return chk ? result : []
}
