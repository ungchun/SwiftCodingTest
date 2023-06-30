import Foundation

var N = Int(readLine()!)!
var arr = [Int]()

for _ in 0..<N {
	arr.append(Int(readLine()!)!)
}
arr.sort(by: >)
var result = arr[0]

for i in 1..<arr.count {
	if result < (arr[i] * (i+1)) {
		result = (arr[i] * (i+1))
	}
}

print(result)
