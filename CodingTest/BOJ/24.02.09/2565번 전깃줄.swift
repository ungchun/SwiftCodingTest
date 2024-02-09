import Foundation

let n = Int(readLine()!)!
var arr = [(Int, Int)]()
var dp = Array(repeating: 1, count: n)

for _ in 0..<n {
	let input = readLine()!.split(separator: " ").map{Int(String($0))!}
	arr.append((input[0], input[1]))
}

arr.sort { $0.0 < $1.0 }

for i in 0..<n {
	for j in 0...i {
		if arr[i].1 > arr[j].1 {
				dp[i] = max(dp[i], dp[j] + 1)
		}
	}
}

print(n-dp.max()!)
