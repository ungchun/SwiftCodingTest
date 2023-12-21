import Foundation

let n = Int(readLine()!)!
var arr = [Int]()
arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var dp = Array(repeating: 1, count: n)

for i in 0..<arr.count {
	for j in 0..<i {
		if arr[j] < arr[i] {
			dp[i] = max(dp[j]+1, dp[i])
		}
	}
}

print(dp.max()!)
