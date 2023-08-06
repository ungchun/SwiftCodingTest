import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
	
	var copyArr = arr
	
	queries.forEach { values in
		for i in values[0]...values[1] {
			copyArr[i] = copyArr[i] + 1
		}
	}
	
	return copyArr
}
