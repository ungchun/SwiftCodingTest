import Foundation

let n = Int(readLine()!)!
var arr = Array(repeating: 0, count: 1001)

arr[1] = 1
arr[2] = 3

for i in stride(from: 3, through: n, by: 1) {
	arr[i] = (arr[i - 1] + arr[i - 2] + arr[i - 2]) % 10007
}
print("\(arr[n])")
