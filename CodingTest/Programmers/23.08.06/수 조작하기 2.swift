import Foundation

func solution(_ numLog:[Int]) -> String {
	
	var result = ""
	var copyLog = numLog
	var beforeVal = copyLog.removeFirst()
	
	copyLog.forEach { val in
		if val == (beforeVal+1) {
			beforeVal += 1
			result += "w"
		} else if val == (beforeVal-1) {
			beforeVal -= 1
			result += "s"
		} else if val == (beforeVal+10) {
			beforeVal += 10
			result += "d"
		} else {
			beforeVal -= 10
			result += "a"
		}
	}
	
	return result
}
