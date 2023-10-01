import Foundation

let NK = readLine()!.split(separator: " ").map{Int(String($0))!}
var N = NK[0]
let K = NK[1]

var arr = Array(repeating: 0, count: K)

for i in 0..<arr.count {
	arr[i] = i+1
}

N -= arr.reduce(0, +)

if N < 0 {
	print(-1)
} else if N % K == 0 {
	print(K - 1)
} else {
	print(K)
}
