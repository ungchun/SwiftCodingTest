import Foundation

func solution(_ board:[[Int]], _ k:Int) -> Int {
	
	var result = 0
	
	for i in 0..<board.count {
		for j in 0..<board[i].count {
			if i + j > k {
				continue
			} else {
				result += board[i][j]
			}
		}
	}
	
	return result
}
