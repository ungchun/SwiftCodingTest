import Foundation

let n = Int(readLine()!)!
var dp = Array(repeating: Array(repeating: 0, count: 10), count: n)

if n == 1 {
	print(10)
} else {
	for i in 0..<10 {
		dp[0][i] = 1
	}
	for i in 1..<n {
		for j in 0..<10 {
			dp[i][j] = dp[i-1][j..<10].reduce(0, +)%10007
		}
	}
	print(dp.last!.reduce(0, +)%10007)
}
