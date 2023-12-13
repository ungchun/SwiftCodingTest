import Foundation

let n = Int(readLine()!)!
var inputs = readLine()!.split(separator: " ").map{Int(String($0))!}

var equalCnt = 0
var add = 0
var minus = 0
var result = 0

var before = inputs.removeFirst()

if inputs.isEmpty {
	print(1)
} else {
	for value in inputs {
		if before == value {
			equalCnt += 1
		} else if before > value {
			minus += 1
			minus += equalCnt
			add += equalCnt
			
			result = max(result, max(add, minus))
			add = 0
			equalCnt = 0
			
			before = value
		} else {
			add += 1
			add += equalCnt
			minus += equalCnt
			
			result = max(result, max(add, minus))
			minus = 0
			equalCnt = 0
			
			before = value
		}
	}
}

print(result+1)
