import Foundation

let N = Int(readLine()!)!
var input = readLine()!.split(separator: " ").map {Int(String($0))!}
var arr = Array(repeating: 0, count: N)

for i in 0..<arr.count {
	var cnt = 0
	for j in i+1..<arr.count {
		if input[i] < input[j] {
			break
		}
		cnt += 1
	}
	arr[i] = cnt
}
print(arr.max()!)
