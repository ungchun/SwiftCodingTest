import Foundation

func solution(_ arr: [Int]) -> Int {
	var result = 0
	var temp = arr
	
	while true {
		var updated = false
		
		for i in 0..<temp.count {
			let val = temp[i]
			
			var tempVal = 0
			if val >= 50 && val % 2 == 0 {
				tempVal = val / 2
			} else if val < 50 && val % 2 != 0 {
				tempVal = val * 2 + 1
			}
			
			if tempVal != temp[i] {
				temp[i] = tempVal
				updated = true
			}
		}
		
		if !updated {
			break
		}
		
		result += 1
	}
	
	return result - 1
}
