import Foundation

func solution(_ l: Int, _ r: Int) -> [Int] {
	var result = [Int]()

	for num in l...r {
		if containsOnly05(num) {
			result.append(num)
		}
	}

	return result.isEmpty ? [-1] : result
}

func containsOnly05(_ number: Int) -> Bool {
	let digits = Array(String(number))

	for digit in digits {
		if digit != "0" && digit != "5" {
			return false
		}
	}

	return true
}

print(solution(5, 555))
