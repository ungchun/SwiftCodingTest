func solution(_ arr1: [[Int]], _ arr2: [[Int]]) -> [[Int]] {
	var result: [[Int]] = []

	let numRows = arr1.count
	let numCols = arr1[0].count

	for i in 0..<numRows {
		var row: [Int] = []
		for j in 0..<numCols {
			let sum = arr1[i][j] + arr2[i][j]
			row.append(sum)
		}
		result.append(row)
	}

	return result
}
