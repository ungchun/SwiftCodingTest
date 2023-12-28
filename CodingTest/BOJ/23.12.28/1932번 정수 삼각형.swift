import Foundation

let n = Int(readLine()!)!
var arr = Array(repeating: [Int](), count: n)
var dp = Array(repeating: Array(repeating: 0, count: 9999), count: n)

for i in 0..<n {
	arr[i] = readLine()!.split(separator: " ").map{Int(String($0))!}
}

dp[0] = arr[0]

for i in 1..<n {
	for j in 0...i {
		if j == 0 {
			dp[i][j] = arr[i][j] + dp[i-1][j]
		} else if j == i {
			dp[i][j] = arr[i][j] + dp[i-1][j-1]
		} else {
			dp[i][j] = max(arr[i][j] + dp[i-1][j-1], arr[i][j] + dp[i-1][j])
		}
	}
}

print(dp.last!.max()!)
