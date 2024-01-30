import Foundation

let n = Int(readLine()!)!
var dp = Array(repeating: 0, count: n+1)

for i in 1..<n+1 {
		dp[i] = i
		for j in 1..<i+1{
				// 제곱수가 현재 i 보다 커지면 break
				if i < j*j {
						break
				}
				if dp[i] > dp[i-(j*j)] {
						dp[i] = dp[i-(j*j)] + 1
				}
		}
}

print(dp[n])
