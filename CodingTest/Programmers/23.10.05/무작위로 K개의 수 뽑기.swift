import Foundation

func solution(_ arr:[Int], _ k:Int) -> [Int] {
	
	var arr2 = Array(repeating: -1, count: k)
	var idx = 0
	
	arr.forEach { val in
		if !arr2.contains(val) && idx < arr2.count {
			arr2[idx] = val
			idx += 1
		}
	}
	
	return arr2
}

print(solution([0, 1, 1, 2, 2, 3], 3))
