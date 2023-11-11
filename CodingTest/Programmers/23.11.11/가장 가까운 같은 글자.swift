import Foundation

func solution(_ s:String) -> [Int] {
	var result = Array(repeating: -1, count: s.count)
	var dict: [Character:Int] = [:]

	let array = Array(s)
	for i in 0..<array.count {
		if dict[array[i]] == nil {
			dict[array[i]] = i
		} else {
			result[i] = i - dict[array[i]]!
			dict[array[i]] = i
		}
	}
	
	return result
}

print(solution("banana"))
