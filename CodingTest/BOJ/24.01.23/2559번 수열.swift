import Foundation

let nk = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nk[0], k = nk[1]
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var temp = arr[0..<k].reduce(0, +)
var maxValue = temp

for i in k..<n {
	maxValue = max(maxValue, temp-(arr[i-k])+arr[i])
	temp = temp-(arr[i-k])+arr[i]
}
print(maxValue)
