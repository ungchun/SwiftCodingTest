import Foundation

let input = readLine()!.split(separator: " ").map {Int(String($0))!}
let N = input[0]
var K = input[1]
var arr = [Int]()

for _ in 0..<N {
	arr.append(Int(readLine()!)!)
}

arr.sort(by: >)
//print(arr)

var result = 0

for val in arr {
	if K / val >= 1 {
		result += (K / val)
		K = (K - val * (K / val))
	}
}

print(result)
