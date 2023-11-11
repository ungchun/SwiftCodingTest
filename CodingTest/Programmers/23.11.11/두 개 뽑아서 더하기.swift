import Foundation

func solution(_ numbers:[Int]) -> [Int] {
	var arr: [Int] = []
	for i in 0..<numbers.count {
		for j in i+1..<numbers.count {
			let temp = numbers[i] + numbers[j]
			arr.append(temp)
		}
	}
	return Set<Int>(arr).sorted()
}

print(solution([2,1,3,4,1]))
