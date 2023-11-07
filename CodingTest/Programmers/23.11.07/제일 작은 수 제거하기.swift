func solution(_ arr: [Int]) -> [Int] {
	guard let minValue = arr.min() else {
		return [-1]
	}
	
	let filteredArr = arr.filter { $0 != minValue }
	
	return filteredArr.isEmpty ? [-1] : filteredArr
}
