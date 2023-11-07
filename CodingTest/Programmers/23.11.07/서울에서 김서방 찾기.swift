import Foundation

func solution(_ seoul:[String]) -> String {
	var result = 0
	for i in 0..<seoul.count {
		if seoul[i] == "Kim" {
			result = i
		}
	}
	
	return "김서방은 \(result)에 있다"
}

print(solution(["Jane", "Kim"]))
