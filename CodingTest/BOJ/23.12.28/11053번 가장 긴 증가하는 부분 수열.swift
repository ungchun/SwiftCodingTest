import Foundation

let n = Int(readLine()!)!
var arr = [Int]()
var dp = Array(repeating: 0, count: n)

arr = readLine()!.split(separator: " ").map{Int(String($0))!}
dp[0] = 1

for i in 1..<n {
	for j in 0...i {
		if arr[i] > arr[j] {
			dp[i] = max(dp[i], dp[j]+1)
		}
	}
}
print(dp)
print(dp.max()!)
