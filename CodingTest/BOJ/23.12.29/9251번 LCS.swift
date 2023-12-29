import Foundation

var x = readLine()!.map{String($0)}
var y = readLine()!.map{String($0)}
var dp = Array(repeating: Array(repeating: 0, count: y.count + 1), count: x.count + 1)

for i in 1...x.count {
	for j in 1...y.count {
		if x[i-1] == y[j-1] {
			dp[i][j] = dp[i - 1][j - 1] + 1
		} else{
			dp[i][j] = max(dp[i - 1][j], dp[i][j - 1])
		}
	}
}
print(dp[x.count][y.count])
