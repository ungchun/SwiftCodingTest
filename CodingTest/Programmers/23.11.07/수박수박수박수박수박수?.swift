import Foundation

func solution(_ n:Int) -> String {
	
	if n % 2 == 0 {
		return String(repeating: "수박", count: n / 2)
	} else {
		return String(repeating: "수박", count: n / 2) + "수"
	}
}

print(solution(3))
