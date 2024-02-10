import Foundation

let nk = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nk[0], k = nk[1]
var dp = Array(repeating: Array(repeating: 1, count: n+1), count: k)

for i in 1..<k {
	for j in 1...n {
		dp[i][j] = (dp[i - 1][j] + dp[i][j - 1]) % 1000000000
	}
}

print(dp[k-1][n])
