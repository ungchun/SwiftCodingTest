import Foundation

func solution(_ arr:[Int], _ query:[Int]) -> [Int] {
	
	var copyArr = arr
	
	for i in 0..<query.count {
		if i % 2 == 0 {
			let idx = query[i]
			copyArr = copyArr[0...idx].map {Int($0)}
		} else {
			let idx = query[i]
			copyArr = copyArr[idx..<copyArr.count].map {Int($0)}
		}
	}
	
	return copyArr
}
