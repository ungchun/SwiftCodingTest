import Foundation

var n = Int(readLine()!)!

if n < 4 {
	print(n)
} else {
	var dp = Array(repeating: 0, count: n)
	dp[0] = 1
	dp[1] = 2
	dp[2] = 3
	
	for i in 3..<n {
		dp[i] = (dp[i-1]+dp[i-2]) % 10007
	}
	
	print(dp[n-1])
}
