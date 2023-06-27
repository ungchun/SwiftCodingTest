import Foundation

let N = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map {Int(String($0))!}
var resultArr = [Int]()

arr.sort()

var result = 0

for val in arr {
	result += val
	resultArr.append(result)
}

print(resultArr.reduce(0, +))
