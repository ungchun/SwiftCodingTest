import Foundation

let kn = readLine()!.split(separator: " ").map{Int(String($0))!}
let k = kn[0], n = kn[1]
var arr = [Int]()
for _ in 0..<k {
	arr.append(Int(readLine()!)!)
}

var start = 1
var end = arr.max()!
var mid = (start+end)/2
var maxValue = Int.min

while start <= end {
	var total = 0
	arr.forEach { num in
		total += (num/mid)
	}
	if total >= n {
		if maxValue < mid {
			maxValue = mid
		}
		start = mid + 1
	} else {
		end = mid - 1
	}

	mid = (start+end)/2
}

print(maxValue)
