import Foundation

func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
	
	return arr.filter { $0 % divisor == 0 }.sorted(by: <).isEmpty ? [-1] : arr.filter { $0 % divisor == 0 }.sorted(by: <)
}

print(solution([5, 9, 7, 10], 5))
