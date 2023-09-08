import Foundation

func solution(_ strArr:[String]) -> Int {
	
	var dic: [Int:[String]] = [:]
	
	strArr.forEach { str in
		let temp = dic[str.count]
		if temp != nil {
			var temp2 = temp
			temp2!.append(str)
			dic[str.count] = temp2
		} else {
			dic[str.count] = [str]
		}
	}
	return dic.values.max { $0.count < $1.count }!.count
}

import Foundation

func solution(_ strArr:[String]) -> Int {
	var arr = Array(repeating: 0, count: 31)
	strArr.forEach { arr[$0.count] += 1 }
	return arr.max()!
}
