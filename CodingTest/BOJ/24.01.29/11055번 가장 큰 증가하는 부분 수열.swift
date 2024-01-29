import Foundation

let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var dp = Array(repeating: 0, count: n)
dp[0] = arr[0]

for i in 1..<n {
	dp[i] = arr[i]
	for j in stride(from: i-1, through: 0, by: -1) {
		if arr[i] > arr[j] {
			dp[i] = max(dp[i], arr[i]+dp[j])
		}
	}
}

print(dp.max()!)
