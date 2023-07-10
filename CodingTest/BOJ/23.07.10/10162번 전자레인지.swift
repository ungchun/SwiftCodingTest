import Foundation

var T = Int(readLine()!)!

// 300, 60, 10

var result = Array(repeating: 0, count: 3)

while T >= 10 {
	if T >= 300 {
		let temp = T / 300
		result[0] = temp
		T -= (300 * temp)
	} else if T >= 60 {
		let temp = T / 60
		result[1] = temp
		T -= (60 * temp)
	} else {
		let temp = T / 10
		result[2] = temp
		T -= (10 * temp)
	}
}

if T == 0 {
	for element in result {
		print(element, terminator: " ")
	}
} else {
	print(-1)
}


