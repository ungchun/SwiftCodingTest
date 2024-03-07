import Foundation

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0], m = nm[1]
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}

var low = 0
var high = arr.max()!

while low <= high {
	let mid = (low+high)/2
	var temp = 0
	for i in 0..<arr.count {
		if mid < arr[i] {
			temp += (arr[i]-mid)
		}
	}
	
	if temp < m {
		high = mid - 1
	} else {
		low = mid + 1
	}
}

print(low-1)
