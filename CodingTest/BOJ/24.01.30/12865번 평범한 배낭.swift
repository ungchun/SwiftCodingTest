import Foundation

let nk = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nk[0], k = nk[1]
var dp = Array(repeating: Array(repeating: 0, count: k+1), count: n)

for i in 0..<n {
	let line = readLine()!.split(separator: " ").map{Int(String($0))!}
	for j in 1...k {
		if i == 0 {
			if line[0] <= j {
				dp[i][j] = line[1]
			}
		} else {
			if line[0] > j {
				dp[i][j] = dp[i-1][j]
			} else {
				dp[i][j] = max(dp[i-1][j], line[1]+dp[i-1][j-line[0]])
			}
		}
	}
}

print(dp[n-1].max()!)
