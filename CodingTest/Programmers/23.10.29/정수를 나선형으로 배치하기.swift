import Foundation

func solution(_ n: Int) -> [[Int]] {
	var answer = Array(repeating: Array(repeating: 0, count: n), count: n)
	var y = 0
	var x = 0
	var direction = 0

	for i in 1...n * n {
		answer[y][x] = i

		// 오른쪽
		if direction == 0 {
			if x == n - 1 || answer[y][x + 1] != 0 {
				direction = 1
				y += 1
			} else {
				x += 1
			}
			
		// 아래
		} else if direction == 1 {
			if y == n - 1 || answer[y + 1][x] != 0 {
				direction = 2
				x -= 1
			} else {
				y += 1
			}
			
		// 왼쪽
		} else if direction == 2 {
			if x == 0 || answer[y][x - 1] != 0 {
				direction = 3
				y -= 1
			} else {
				x -= 1
			}
			
		// 위
		} else if direction == 3 {
			if y == 0 || answer[y - 1][x] != 0 {
				direction = 0
				x += 1
			} else {
				y -= 1
			}
		}
	}

	return answer
}
