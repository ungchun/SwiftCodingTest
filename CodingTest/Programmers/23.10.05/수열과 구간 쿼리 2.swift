import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
	var result: [Int] = []
	
	queries.forEach { vals in
		let s = vals[0]
		let e = vals[1]
		let k = vals[2]
		
		var temp = Int.max
		for i in s...e {
			if k < arr[i] {
				if temp > arr[i] {
					temp = arr[i]
				}
			}
		}
		
		temp == Int.max ? result.append(-1) : result.append(temp)
	}
	
	return result
}

print(solution([0, 1, 2, 4, 3], [[0, 4, 2],[0, 3, 2],[0, 2, 2]]))
