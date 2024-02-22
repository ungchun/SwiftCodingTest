import Foundation

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0], m = nm[1]
var arr = [Int]()
for _ in 0..<n {
	arr.append(Int(readLine()!)!)
}

var low = arr.max()!
var high = arr.reduce(0, +)
var result = Int.max

while low <= high {
	var mid = (low+high)/2
	var temp = mid
	var cnt = 1
	
	arr.forEach { num in
		if temp-num >= 0 {
			temp -= num
		} else {
			temp = mid
			temp -= num
			cnt += 1
		}
	}
	
	if m >= cnt {
		high = mid-1
		result = min(result, mid)
	} else {
		low = mid+1
	}
}
