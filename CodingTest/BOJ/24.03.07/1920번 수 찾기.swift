import Foundation

let n = Int(readLine()!)!
var nArr = readLine()!.split(separator: " ").map{Int(String($0))!}
let m = Int(readLine()!)!
var mArr = readLine()!.split(separator: " ").map{Int(String($0))!}
nArr.sort()

for i in 0..<m {
	print(search(nArr, mArr[i]))
}

func search(_ arr: [Int], _ target: Int) -> Int {
	var low = 0
	var high = arr.count-1
	
	while low <= high {
		var mid = (low+high)/2
		if arr[mid] == target {
			return 1
		} else if arr[mid] > target {
			high = mid - 1
		} else if arr[mid] < target  {
			low = mid + 1
		}
	}
	
	return 0
}
