import Foundation

func solution(_ num_list:[Int]) -> Int {
	
	var result = 0
	
	num_list.forEach { val in
		var copyVal = val
		while copyVal != 1 {
			if copyVal % 2 == 0 {
				copyVal /= 2
				result += 1
			} else {
				copyVal -= 1
				copyVal /= 2
				result += 1
			}
		}
	}
	
	return result
}

print(solution([12, 4, 15, 1, 14]))
