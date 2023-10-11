import Foundation

func solution(_ numlist:[Int], _ n:Int) -> [Int] {
	
	let copyNumlist = numlist.map {abs($0 - n)}
	
	var dict: [Int: Int] = [:]
	
	for i in 0..<copyNumlist.count {
		dict[numlist[i]] = copyNumlist[i]
	}
	
	let a = dict.sorted { $0.value == $1.value ? $0.key > $1.key : $0.value < $1.value}
	var result: [Int] = []
	
	a.forEach {
		result.append($0.key)
	}
	
	return result
}
