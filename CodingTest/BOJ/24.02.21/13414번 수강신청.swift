import Foundation

let kl = readLine()!.split(separator: " ").map{Int(String($0))!}
let k = kl[0], l = kl[1]
var last = 0
var dict:[String:Int] = [:]

for i in 0..<l {
	dict[readLine()!, default: 0] = i
}
var cnt = 0
for i in dict.sorted(by: { $0.value < $1.value }) {
	if cnt == k {
		break
	}
	print(i.key)
	cnt += 1
}
