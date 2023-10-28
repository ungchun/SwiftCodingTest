import Foundation

func solution(_ board:[[Int]]) -> Int {

	var results: [[Int]] = Array(repeating: Array(repeating: 0, count: board.count), count: board.count)

	for (i,first) in board.enumerated() {
		for (j,second) in first.enumerated() {
			if board[i][j] == 1 {
				for x in i-1...i+1 {
					for y in j-1...j+1{
						if 0 <= x && 0 <= y && x < board.count && y < board.count { results[x][y] = 1 }
					}
				}
			}
		}
	}
	return board.count * board.count - results.map{ $0.reduce(0,+) }.reduce(0, +)
}
