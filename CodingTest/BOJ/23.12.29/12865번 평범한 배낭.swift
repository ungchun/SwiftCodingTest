import Foundation

let line = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = line[0], k = line[1]

var value: [(Int, Int)] = []

for _ in 0..<n {
	let line = readLine()!.split(separator: " ").map{Int(String($0))!}
	value.append((line[0], line[1]))
}

var dp = [[Int]](repeating: [Int](repeating: 0, count: k+1), count: n)

for i in 0..<n {
	for j in 1...k {
		if i == 0 {
			if j >= value[i].0 {
				dp[i][j] = value[i].1
			}
		} else {
			if j < value[i].0 {
				dp[i][j] = dp[i-1][j]
			} else {
				dp[i][j] = max(dp[i-1][j], value[i].1+dp[i-1][j-value[i].0])
			}
		}
	}
}

print(dp[n-1][k])
