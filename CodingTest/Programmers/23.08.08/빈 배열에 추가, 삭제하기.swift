import Foundation

func solution(_ arr:[Int], _ flag:[Bool]) -> [Int] {
	
	var result: [Int] = []
	
	for i in 0..<arr.count {
		if flag[i] {
			var arr = Array(repeating: arr[i], count: arr[i] * 2)
			result.append(contentsOf: arr)
		} else {
			for _ in 0..<arr[i] {
				result.removeLast()
			}
		}
	}
	
	return result
}
