import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
	
	var copyArr = arr
	
	for i in 0..<queries.count {
		let first = queries[i][0]
		let second = queries[i][1]
		
		var temp = copyArr[second]
		copyArr[second] = copyArr[first]
		copyArr[first] = temp
	}

	return copyArr
}
