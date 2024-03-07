import Foundation

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0], m = nm[1]
var arr = [Int]()
for _ in 0..<n {
	arr.append(Int(readLine()!)!)
}

var low = 1
var high = arr.max()!

while low <= high {
	let mid = (low+high)/2
	var cnt = 0
	for i in 0..<n {
		cnt += (arr[i]/mid)
	}
	
	if cnt < m {
		high = mid - 1
	} else {
		low = mid + 1
	}
}

print(low-1)
