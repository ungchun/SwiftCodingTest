import Foundation

let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
let m = Int(readLine()!)!

var low = 0
var high = arr.max()!
var result = 0

while low <= high {
	let mid = (low+high)/2
	var temp = 0
	for i in 0..<n {
		if arr[i] < mid {
			temp += arr[i]
		} else {
			temp += mid
		}
	}
	
	if temp > m {
		high = mid - 1
	} else {
		result = max(result, mid)
		low = mid + 1
	}
}

print(result)
