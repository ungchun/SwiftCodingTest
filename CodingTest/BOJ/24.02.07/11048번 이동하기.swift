import Foundation

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0], m = nm[1]
var arr = Array(repeating: [Int](), count: n)
var dp = Array(repeating: Array(repeating: 0, count: m), count: n)

for i in 0..<n {
	arr[i] = readLine()!.split(separator: " ").map{Int(String($0))!}
}

for i in 0..<n {
	for j in 0..<m {
		if i == 0 {
			if j-1 >= 0 {
				dp[0][j] = arr[0][j]+dp[0][j-1]
			} else {
				dp[0][j] = arr[0][j]
			}
		} else {
			if j == 0 {
				dp[i][j] = arr[i][j]+dp[i-1][j]
			} else {
				dp[i][j] = max(dp[i-1][j-1], dp[i-1][j], dp[i][j-1])+arr[i][j]
			}
		}
	}
}

print(dp[n-1][m-1])
