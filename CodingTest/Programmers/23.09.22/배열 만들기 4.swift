import Foundation

func solution(_ arr:[Int]) -> [Int] {
	
	var stk: [Int] = []
	var idx = 0
	
	while true {
		if idx >= arr.count {
			break
		}
		
		if stk.isEmpty {
			stk.append(arr[idx])
			idx += 1
		} else if stk.last! < arr[idx] {
			stk.append(arr[idx])
			idx += 1
		} else {
			stk.removeLast()
		}
	}
	
	return stk
}

print(solution([1, 4, 2, 5, 3]))
