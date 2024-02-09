import Foundation

let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
arr.sort()
var left = 0
var right = arr.count-1
var result = (0, 0)
var temp = Int.max

while left < right {
	if (arr[left] + arr[right]) == 0 {
		result = (arr[left], arr[right])
		break
	}
	
	if abs(0-temp) > abs(0-(arr[left] + arr[right])) {
		temp = (arr[left] + arr[right])
		result = (arr[left], arr[right])
	}
	
	if arr[left] + arr[right] < 0 {
		left += 1
	} else {
		right -= 1
	}
}

print("\(result.0) \(result.1)")
