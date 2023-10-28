import Foundation

func solution(_ lines:[[Int]]) -> Int {
	var result = Set<Int>()
	for i in lines[0][0]+1...lines[0][1] {
		if (i > lines[1][0] && i <= lines[1][1]) ||
			(i > lines[2][0] && i <= lines[2][1]) {
			result.insert(i)
		}
	}
	for i in lines[1][0]+1...lines[1][1] {
		if (i > lines[2][0] && i <= lines[2][1]) {
			result.insert(i)
		}
	}
	return result.count
}
