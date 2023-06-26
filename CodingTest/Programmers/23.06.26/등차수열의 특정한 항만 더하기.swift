import Foundation

func solution(_ a:Int, _ d:Int, _ included:[Bool]) -> Int {
	
	var result = 0
	var temp = a
	
	if included[0] {
		result += a
	}
	
	for i in 1..<included.count {
		temp += d
		if included[i] {
			result += temp
		}
	}
	
	return result
}
