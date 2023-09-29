import Foundation

let N = Int(readLine()!)!
var arr = Array(repeating: 0, count: N)
for i in 0..<N {
	arr[i] = Int(readLine()!)!
}

arr.sort(by: >)
var result = 0

for i in 0..<arr.count {
	if (i+1) % 3 == 0 {
		continue
	}
	result += arr[i]
}

print(result)
