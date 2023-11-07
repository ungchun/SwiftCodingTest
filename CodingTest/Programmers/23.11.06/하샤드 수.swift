import Foundation

func solution(_ x:Int) -> Bool {
	return x % Array(String(x)).map{Int(String($0))!}.reduce(0, +) == 0 ? true : false
}

print(solution(10))
