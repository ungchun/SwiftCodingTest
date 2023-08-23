import Foundation

func solution(_ arr:[Int]) -> [Int] {
	
	let cnt = arr.count
	var temp = 0.0
	
	var copyArr = arr
	
	while true {
		if Int(pow(2, temp)) >= cnt {
			break
		}
		
		temp += 1.0
	}
	
	let arr = Array(repeating: 0, count: Int(pow(2, temp)) - cnt)
	
	copyArr.append(contentsOf: arr)

	return copyArr
}
