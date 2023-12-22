import Foundation

let n = Int(readLine()!)!
var arr = [[Int]]()
for _ in 0..<n {
	arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}
var dp = arr
dp[0][0] = arr[0][0]

for i in 1..<n {
	for j in 0..<arr[i].count {
		if j == 0 {
			dp[i][j] = dp[i-1][j] + arr[i][j]
		} else if j == arr[i].count-1 {
			dp[i][j] = dp[i-1][j-1] + arr[i][j]
		} else {
			dp[i][j] = max(dp[i-1][j-1] + arr[i][j], dp[i-1][j] + arr[i][j])
		}
	}
}

print(dp.last!.max()!)
