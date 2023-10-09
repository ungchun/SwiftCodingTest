import Foundation

func solution(_ n:Int) -> Int {
	var result = 0

	for _ in 1...n {
		result += 1
		while result % 3 == 0 || Array(String(result)).contains("3") {
			result += 1
		}
	}
	
	return result
}

print(solution(40))
