import Foundation

var input = Int(readLine()!)!

let arr = [500, 100, 50, 10, 5, 1]
var result = 0

input = 1000 - input

for i in 0..<arr.count {
	if input / arr[i] != 0 {
		result += input / arr[i]
		input -= (input / arr[i] * arr[i])
	}
}
print(result)
