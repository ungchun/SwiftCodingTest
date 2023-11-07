import Foundation

func solution(_ n:Int) -> Int {
	var cnt = 1
	var result = 1
	while n != cnt {
		if n % cnt == 1 {
			result = cnt
			break
		}
		cnt += 1
	}
	return result
}

print(solution(10))
