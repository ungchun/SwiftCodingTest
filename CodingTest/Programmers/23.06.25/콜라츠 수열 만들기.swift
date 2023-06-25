import Foundation

func solution(_ n:Int) -> [Int] {
	
	var result: [Int] = []
	var copyN = n
	
	while copyN != 1 {
		result.append(copyN)
		if copyN % 2 == 0 {
			copyN /= 2
		} else {
			copyN = copyN * 3 + 1
		}
	}
	
	result.append(1)
	
	return result
}
