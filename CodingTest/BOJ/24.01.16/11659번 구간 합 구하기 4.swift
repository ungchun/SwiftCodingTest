import Foundation

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0], m = nm[1]
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var sumArr = Array(repeating: 0, count: n)

for i in 0..<n {
	if i == 0 {
		sumArr[i] = arr[i]
	} else {
		sumArr[i] = sumArr[i-1]+arr[i]
	}
}
for _ in 0..<m {
	let line = readLine()!.split(separator: " ").map{Int(String($0))!}
	if line[0] == 1 {
		print(sumArr[line[1]-1])
	} else {
		print(sumArr[line[1]-1]-sumArr[line[0]-2])
	}
}
