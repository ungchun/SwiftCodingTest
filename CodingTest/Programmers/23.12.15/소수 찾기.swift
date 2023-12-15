import Foundation

func solution(_ numbers:String) -> Int {
	var result = 0
	var numbers = Array(numbers)
	var numSet: Set<Int> = []
	
	for i in 1...numbers.count {
		var picked = [Int]()
		var visited = Array(repeating: false, count: numbers.count)
		func pick(toPick: Int) {
			if toPick == 0 {
				if isPrime(num: Int(picked.map{ String($0) }.joined())!) {
					numSet.insert(Int(picked.map{ String($0) }.joined())!)
				}
				return
			}
			for i in 0..<numbers.count {
				if visited[i] {
					continue
				}
				picked.append(Int(String(numbers[i]))!)
				visited[i] = true
				pick(toPick: toPick - 1)
				visited[i] = false
				picked.removeLast()
			}
		}
		pick(toPick: i)
	}
	
	return numSet.count
}

func isPrime(num: Int) -> Bool {
	if (num < 4) {
		return num == 1 || num == 0 ? false : true
	}
	for i in 2...Int(sqrt(Double(num))) {
		if (num % i == 0) { return false }
	}
	return true
}
