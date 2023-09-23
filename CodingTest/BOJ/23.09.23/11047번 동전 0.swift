import Foundation

let NK = readLine()!.split(separator: " ").map {Int(String($0))!}
let N = NK[0]
var K = NK[1]

var arr = Array(repeating: 0, count: N)

for i in 0..<N {
	arr[i] = Int(readLine()!)!
}

arr.reverse()

var cnt = 0

for i in 0..<arr.count {
	while arr[i] <= K {
		K -= arr[i]
		cnt += 1
	}
}

print(cnt)
