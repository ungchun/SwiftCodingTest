import Foundation

let n = Double(readLine()!)!
var low = 0.0
var high = Double(n)
var result = 0.0

while low <= high {
	let mid = Double(Int((low + high) / 2))
	
	if (mid * mid) >= n {
		high = mid - 1
		result = mid
	} else {
		low = mid + 1
	}
}

print(Int(result))
