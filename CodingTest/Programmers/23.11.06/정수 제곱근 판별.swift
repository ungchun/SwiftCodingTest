import Foundation

func solution(_ n:Int64) -> Int64 {
	var idx = 2
	var result = false
	
	while idx * idx <= n {
		if idx * idx == n {
			result = true
			break
		}
		idx += 1
	}
	return Int64(result ? (idx+1) * (idx+1) : -1)
}

print(solution(12))
