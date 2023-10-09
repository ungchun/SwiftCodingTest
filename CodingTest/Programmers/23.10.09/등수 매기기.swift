import Foundation

func solution(_ score:[[Int]]) -> [Int] {
	
	var dict: [Int: Int] = [:]
	
	for i in 0..<score.count {
		dict[i] = score[i].reduce(0, +)
	}
	
	print(dict)
	
	let sorted = dict.sorted { $0.value > $1.value }
	
	var beforeMax = -1
	var idx = 1
	var result = Array(repeating: 0, count: score.count)
	
	var sortedVal = sorted.map { $0.key }

	var cnt = 1
	var first = false
	
	sorted.map { $0.value }.forEach { val in
		if beforeMax == val {
			result[sortedVal.removeFirst()] = idx
			cnt += 1
			first = true
		} else {
			if first {
				idx += cnt
			}
			result[sortedVal.removeFirst()] = idx
			cnt = 1
			beforeMax = val
			first = true
		}
	}
	
	return result
}

print(solution([[80, 70], [70, 80], [30, 50], [90, 100], [100, 90], [100, 100], [10, 30]]))
