import Foundation

func solution(_ arr:[Int], _ idx:Int) -> Int {
	
	var result = -1
	
	for i in idx..<arr.count {
		if arr[i] == 1 {
			result = i
			break
		}
	}
	
	return result
}
