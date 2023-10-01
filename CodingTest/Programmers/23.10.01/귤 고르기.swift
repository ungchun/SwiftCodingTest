import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
	
	var dict: [Int:Int] = [:]
	
	tangerine.forEach { val in
		if dict[val] != nil {
			dict[val] = dict[val]! + 1
		} else {
			dict[val] = 1
		}
	}
	
	print(dict)
	
	let sortedDict = dict.sorted { $0.value > $1.value }
	var temp = 0
	var cnt = 0
	
	print(sortedDict)
	
	for i in 0..<sortedDict.count {
		if temp >= k {
			break
		}
		temp += sortedDict[i].value
		cnt += 1
	}
	
	return cnt
}


print(solution(2, [1, 1, 1, 1, 2, 2, 2, 3]))
