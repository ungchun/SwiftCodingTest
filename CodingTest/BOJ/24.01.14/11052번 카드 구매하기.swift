import Foundation

let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var dp = Array(repeating: 0, count: n+1)

for i in 1...n {
	for j in 1...i {
		dp[i] = max(dp[i], dp[i-j]+arr[j-1])
	}
}
print(dp.max()!)
