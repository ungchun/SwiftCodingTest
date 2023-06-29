import Foundation

func solution(_ intStrs:[String], _ k:Int, _ s:Int, _ l:Int) -> [Int] {
	var result = [Int]()
	
	for i in 0..<intStrs.count {
		let str = intStrs[i]
		let startIndex = str.index(str.startIndex, offsetBy: s)
		let endIndex = str.index(str.startIndex, offsetBy: s+l-1)
		let range = startIndex...endIndex
		if Int(str[range])! > k {
			result.append(Int(str[range])!)
		}
	}
	
	return result
}
