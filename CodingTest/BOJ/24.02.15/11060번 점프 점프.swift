import Foundation

let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var dp = Array(repeating: 1_000_000, count: 1_101)
dp[0] = 0

for i in 0..<arr.count {
	for j in i..<arr[i]+i {
		dp[j+1] = min(dp[j+1], dp[i]+1)
	}
}
print(dp[n-1] == 1_000_000 ? -1 : dp[n-1])
