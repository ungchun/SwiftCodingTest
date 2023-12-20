import Foundation

let n = Int(readLine()!)!
var arr: [[Int]] = [[]]
var dp = Array(repeating: Array(repeating: 0, count: 3), count: n+1)

for _ in 1...n {
	let line = readLine()!.split(separator: " ").map {Int(String($0))!}
	arr.append(line)
}

for i in 1...n {
	dp[i][0] = min(dp[i - 1][1], dp[i - 1][2]) + arr[i][0]
	dp[i][1] = min(dp[i - 1][0], dp[i - 1][2]) + arr[i][1]
	dp[i][2] = min(dp[i - 1][0], dp[i - 1][1]) + arr[i][2]
}
print(min(dp[n][0], dp[n][1], dp[n][2]))
