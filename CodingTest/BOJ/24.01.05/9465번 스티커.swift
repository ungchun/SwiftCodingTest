import Foundation

var t = Int(readLine()!)!

for _ in 0..<t {
	let n = Int(readLine()!)!
	var arr = Array(repeating: [Int](), count: 2)
	var dp = Array(repeating: Array(repeating: 0, count: n), count: 2)
	
	for i in 0..<2 {
		arr[i] = readLine()!.split(separator: " ").map{Int(String($0))!}
	}
	
	for i in 0..<n {
		for j in 0..<2 {
			if i == 0 {
				dp[j][i] = arr[j][i]
			} else {
				if j == 0 {
					dp[j][i] = max(arr[j][i]+dp[1][i-1], dp[0][i-1])
				} else {
					dp[j][i] = max(arr[j][i]+dp[0][i-1], dp[1][i-1])
				}
			}
		}
	}
	print(max(dp[0][n-1],dp[1][n-1]))
}

