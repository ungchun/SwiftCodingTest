import Foundation

let N = Int(readLine()!)!
var arr = Array(repeating: 0, count: N)

for i in 0..<N {
	arr[i] = Int(readLine()!)!
}
arr.sort(by: >)

var cnt = 1
var result = 0

for i in 0..<arr.count {
	let temp = (arr[i] - (cnt - 1))
	if temp > 0 {
		result += (arr[i] - (cnt - 1))
	}
	cnt += 1
}

print(result)
