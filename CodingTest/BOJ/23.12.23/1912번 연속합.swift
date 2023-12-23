import Foundation

let n = Int(readLine()!)!
var arr = [Int]()
var dp = Array(repeating: 0, count: n)

arr = readLine()!.split(separator: " ").map{Int(String($0))!}
dp[0] = arr[0]

for i in 1..<arr.count {
	dp[i] = max(arr[i], dp[i-1]+arr[i])
}

print(dp.max()!)
