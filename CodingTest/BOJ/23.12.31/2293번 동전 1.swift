import Foundation

let nk = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nk[0], k = nk[1]

var arr = Array(repeating: 0, count: n)
var dp = Array(repeating: 0, count: k+1)
for i in 0..<n {
	arr[i] = Int(readLine()!)!
}
dp[0] = 1
for i in 0..<n {
	for j in stride(from: arr[i], through: k, by: 1){
		if dp[j] + dp[j - arr[i]] >= Int(pow(2.0, 31.0)){
			dp[j] = 0
		} else {
			dp[j] += dp[j-arr[i]]
		}
	}
}
print(dp[k])
