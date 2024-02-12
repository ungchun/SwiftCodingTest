import Foundation

var x: Int = 0
var y: Int = 0

if let input = readLine() {
	let inputs = input.split(separator: " ").map { Int($0)! }
	
	x = inputs[0]
	y = inputs[1]
}
var z: Int = y * 100 / x
var res: Int = -1
var left: Int = 1
var right: Int = 1000000000

while left <= right {
	// mid -> 추가로 진행하는 게임 수
	let mid: Int = (left + right) / 2
	
	let nx: Int = x + mid
	let ny: Int = y + mid
	let nz: Int = ny * 100 / nx
	
	if z != nz {
		right = mid - 1
		res = mid
	} else {
		left = mid + 1
	}
}

print(res)
