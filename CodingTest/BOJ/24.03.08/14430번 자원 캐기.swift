import Foundation

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0], m = nm[1]
var map = [[Int]]()
var dp = Array(repeating: Array(repeating: 0, count: m), count: n)

for _ in 0..<n {
	map.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

for i in 0..<n {
	for j in 0..<m {
		if i == 0 {
			if j == 0 {
				dp[i][j] = map[i][j]
			} else {
				dp[i][j] = dp[i][j-1]+map[i][j]
			}
		} else {
			if j == 0 {
				dp[i][j] = dp[i-1][j]+map[i][j]
			} else {
				dp[i][j] = max(dp[i-1][j]+map[i][j], dp[i][j-1]+map[i][j])
			}
		}
	}
}
print(dp[n-1][m-1])
