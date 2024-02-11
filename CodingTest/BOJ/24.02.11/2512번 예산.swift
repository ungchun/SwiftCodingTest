import Foundation

let N = Int(readLine()!)!
let requests = readLine()!.split(separator: " ").map { Int(String($0))! }
let limit = Int(readLine()!)!

var start = 0
var end = requests.max()!
var mid = (start+end)/2

while start <= end {
	let total = requests.reduce(0) { $0 + ($1 < mid ? $1 : mid) }
	if total > limit {
		end = mid - 1
	} else {
		start = mid + 1
	}
	mid = (start + end) / 2
}

print(mid)
