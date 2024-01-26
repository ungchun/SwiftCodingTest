import Foundation

let n = Int(readLine()!)!
let p = readLine()!.split(separator: " ").map{Int(String($0))!}
var dp = Array(repeating: 0, count: n+1)
dp[1] = p[0]

for i in 1..<n {
	dp[i+1] = p[i]
	for j in 1...i {
		dp[i+1] = min(dp[i+1], dp[j]+p[i-j])
	}
}

print(dp.last!)
