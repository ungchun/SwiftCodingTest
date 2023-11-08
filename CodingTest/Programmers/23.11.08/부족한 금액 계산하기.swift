import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
	var result = 0
	var temp = 0
	for _ in 0..<count {
		temp += price
		result += temp
	}
	return Int64(result < money ? 0 : result-money)
}

print(solution(3, 20, 4))
