import Foundation

func solution(_ n:Int64) -> [Int] {
	return Array(String(n)).reversed().map {Int(String($0))!}
}

print(solution(12345))
