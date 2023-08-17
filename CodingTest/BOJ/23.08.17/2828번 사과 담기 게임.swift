import Foundation

let NM = readLine()!.split(separator: " ").map {Int(String($0))!}
let N = NM[0]
let M = NM[1]

let J = Int(readLine()!)!

var arr = Array(repeating: 0, count: J)

for i in 0..<J {
	arr[i] = Int(readLine()!)! - 1
}

var start = 0
var end = M - 1

var cnt = 0

for val in arr {
	if start <= val && val <= end {
		continue
	} else if start > val {
		while start != val {
			start -= 1
			end -= 1
			cnt += 1
		}
	} else if end < val {
		while end != val {
			start += 1
			end += 1
			cnt += 1
		}
	}
}

print(cnt)
