import Foundation

func solution(_ arr:[Int]) -> [Int] {
	
	//	if let s = arr.firstIndex(of: 2), let e = arr.lastIndex(of: 2) {
	//		   return Array(arr[s...e])
	//	   } else {
	//		   return [-1]
	//	   }
	
	var resultArr: [Int] = []
	var chk = false
	
	arr.forEach { val in
		if chk {
			resultArr.append(val)
		}
		else if !chk && val == 2 {
			resultArr.append(val)
			chk = true
		}
	}
	
	var a: [Int] = []
	var chk2 = false
	
	resultArr.reversed().forEach { val in
		if val == 2 {
			chk2 = true
		}
		
		if chk2 {
			a.append(val)
		}
	}
	
	return a.reversed().isEmpty ? [-1] : a.reversed()
}

print(solution([1, 2, 1, 4, 5, 2, 9]))
