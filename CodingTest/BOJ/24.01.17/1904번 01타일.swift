import Foundation

let n = Int(readLine()!)!
var dp = Array(repeating: 0, count: n)

if n == 1 {
	print(1)
} else if n == 2 {
	print(2)
} else {
	dp[0] = 1
	dp[1] = 2
	for i in 2..<n {
		dp[i] = (dp[i-2]+dp[i-1]) % 15746
	}
	print(dp.last!)
}
