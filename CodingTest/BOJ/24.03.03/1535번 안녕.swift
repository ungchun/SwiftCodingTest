import Foundation

let n = Int(readLine()!)!
var minusArr = [0]+readLine()!.split(separator: " ").map{Int(String($0))!}
var addArr = [0]+readLine()!.split(separator: " ").map{Int(String($0))!}
var dp = Array(repeating: Array(repeating:0, count:n+1), count: 100)

for i in 1...n {
	let (h,p) = (minusArr[i], addArr[i])
	for k in 0...99 {
		if h <= k {
			dp[k][i] = max(dp[k][i-1], dp[k-h][i-1]+p)
		}else {
			dp[k][i] = dp[k][i-1]
		}
	}
}

print(dp[99][n])
