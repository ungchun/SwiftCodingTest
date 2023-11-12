import Foundation

func solution(_ n:Int) -> Int {
	var result = 0
	for i in 2...n {
		if isPrime(num: i) {
			result += 1
		}
	}
	
	return result
}

print(solution(10))

func isPrime(num: Int) -> Bool {
	if (num < 4) {
		return num == 1 ? false : true
	}
	for i in 2...Int(sqrt(Double(num))) {
		if (num % i == 0) { return false }
	}
	return true
}
