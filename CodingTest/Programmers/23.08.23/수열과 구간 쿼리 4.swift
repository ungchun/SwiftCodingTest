import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
	
	var copyArr = arr
	
	queries.forEach { arr in
		var s = arr[0]
		var e = arr[1]
		var k = arr[2]
		
		for i in s...e {
			if i % k == 0 {
				copyArr[i] = copyArr[i] + 1
			}
		}
	}
	
	return copyArr
}
