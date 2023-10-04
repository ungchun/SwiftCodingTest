import Foundation

func solution(_ arr:[Int]) -> [Int] {
	var stk: [Int] = []
	var idx = 0
	
	while idx < arr.count {
		if stk.isEmpty {
			stk.append(arr[idx])
			idx += 1
		} else if stk.last! == arr[idx] {
			stk.removeLast()
			idx += 1
		} else {
			stk.append(arr[idx])
			idx += 1
		}
	}
	
	return stk.isEmpty ? [-1] : stk
}

print(solution([0, 1, 1, 1, 0]))
