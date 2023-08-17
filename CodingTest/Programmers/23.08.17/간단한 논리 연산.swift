import Foundation

func solution(_ x1:Bool, _ x2:Bool, _ x3:Bool, _ x4:Bool) -> Bool {
	
	var x1x2 = true
	var x3x4 = true
	
	var result = false
	
	if x1 == false && x2 == false {
		x1x2 = false
	}
	
	if x3 == false && x4 == false {
		x3x4 = false
	}
	
	if x1x2 == true && x3x4 == true {
		result = true
	}
	
	return result
}

print(solution(false, true, true, true))
