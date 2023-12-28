import Foundation

let n = Int(readLine()!)!
var arr = Array(repeating: [Int](), count: n)
var dp = Array(repeating: Array(repeating: 0, count: 3), count: n)

for i in 0..<n {
	arr[i] = readLine()!.split(separator: " ").map{Int(String($0))!}
}

dp[0] = arr[0]

for i in 1..<n {
	dp[i][0] = min(dp[i-1][1]+arr[i][0], dp[i-1][2]+arr[i][0])
	dp[i][1] = min(dp[i-1][0]+arr[i][1], dp[i-1][2]+arr[i][1])
	dp[i][2] = min(dp[i-1][0]+arr[i][2], dp[i-1][1]+arr[i][2])
}

print(dp[n-1].min()!)
