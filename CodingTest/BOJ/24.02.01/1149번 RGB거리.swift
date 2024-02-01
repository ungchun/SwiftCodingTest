import Foundation

let n = Int(readLine()!)!
var dp = Array(repeating: Array(repeating: 0, count: 3), count: n)
var arr = Array(repeating: [Int](), count: n)
for i in 0..<n {
	arr[i] = readLine()!.split(separator: " ").map{Int(String($0))!}
}
dp[0][0] = arr[0][0]
dp[0][1] = arr[0][1]
dp[0][2] = arr[0][2]

for i in 1..<n {
	for j in 0..<3 {
		switch j {
		case 0:
			dp[i][0] = min(arr[i][0]+dp[i-1][1], arr[i][0]+dp[i-1][2])
			break
		case 1:
			dp[i][1] = min(arr[i][1]+dp[i-1][0], arr[i][1]+dp[i-1][2])
			break
		case 2:
			dp[i][2] = min(arr[i][2]+dp[i-1][1], arr[i][2]+dp[i-1][0])
			break
		default:
			break
		}
	}
}

print(dp[n-1].min()!)
