import Foundation

func solution(_ park: [String], _ routes: [String]) -> [Int] {
	var parkMap = park.map { Array($0) }
	var location = [-1, -1]

	outerLoop: for i in parkMap.indices {
		for j in parkMap[i].indices {
			if parkMap[i][j] == "S" {
				location = [i, j]
				break outerLoop
			}
		}
	}

	let (w, h) = (parkMap[0].count, parkMap.count)

	func move(_ direction: String, _ distance: Int) -> [Int] {

		var current = location

		let dx = [1, -1, 0, 0]
		let dy = [0, 0, 1, -1]

		let directions = ["E", "W", "S", "N"]
		let i = directions.firstIndex(of: direction)!

		for _ in 1...distance {
			let nextX = current[1] + dx[i]
			let nextY = current[0] + dy[i]

			if !(nextX >= 0 && nextX < w && nextY >= 0 && nextY < h
				&& parkMap[nextY][nextX] != "X") {
				return location
			} else {
				current[1] = nextX
				current[0] = nextY
			}
		}
		return current
	}

	for route in routes {
		let command = route.split(separator: " ")
		let (direction, distance) = (String(command[0]), Int(command[1])!)
		location = move(direction, distance)
	}
	return [location[0], location[1]]
}
