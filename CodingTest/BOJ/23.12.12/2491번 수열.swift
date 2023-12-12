import Foundation

let n = Int(readLine()!)!
var line = readLine()!.split(separator: " ").map{Int(String($0))!}

var answer = 1
var len = 1
var len2 = 1

for i in 0..<n-1 {
	if line[i] <= line[i+1] {
		len += 1
	} else {
		len = 1
	}
	
	if line[i] >= line[i+1] {
		len2 += 1
	} else {
		len2 = 1
	}
	answer = max(answer, max(len, len2))
}

print(answer)
