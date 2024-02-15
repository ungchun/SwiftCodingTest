import Foundation

let n = Int(readLine()!)!
var arr = Array(repeating: [Int](), count: n)
var maxDp = Array(repeating: Array(repeating: 0, count: 3), count: n)
var minDp = Array(repeating: Array(repeating: 0, count: 3), count: n)

for i in 0..<n {
	arr[i] = readLine()!.split(separator: " ").map{Int(String($0))!}
}

maxDp[0] = arr[0]
minDp[0] = arr[0]

for i in 1..<n {
	for j in 0..<3 {
		if j == 0 {
			maxDp[i][j] = max(maxDp[i-1][0]+arr[i][j], maxDp[i-1][1]+arr[i][j])
			minDp[i][j] = min(minDp[i-1][0]+arr[i][j], minDp[i-1][1]+arr[i][j])
		} else if j == 1 {
			maxDp[i][j] = max(maxDp[i-1][0]+arr[i][j], maxDp[i-1][1]+arr[i][j], maxDp[i-1][2]+arr[i][j])
			minDp[i][j] = min(minDp[i-1][0]+arr[i][j], minDp[i-1][1]+arr[i][j], minDp[i-1][2]+arr[i][j])
		} else {
			maxDp[i][j] = max(maxDp[i-1][1]+arr[i][j], maxDp[i-1][2]+arr[i][j])
			minDp[i][j] = min(minDp[i-1][1]+arr[i][j], minDp[i-1][2]+arr[i][j])
		}
	}
}

print("\(maxDp[n-1].max()!) \(minDp[n-1].min()!)")
