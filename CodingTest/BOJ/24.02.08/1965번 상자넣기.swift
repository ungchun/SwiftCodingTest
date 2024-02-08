import Foundation

let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var dp = Array(repeating: 0, count: n+1)

for i in 0..<n {
	for j in 0..<i {
		if arr[j] < arr[i] {
			dp[i] = max(dp[i], dp[j]+1)
		}
	}
}

print(dp.max()!+1)
