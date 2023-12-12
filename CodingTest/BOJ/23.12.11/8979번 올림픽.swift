import Foundation

let nk = readLine()!.split(separator: " ").map {Int(String($0))!}
let n = nk[0], k = nk[1]

var chk: [Int:Int] = [:]

for _ in 0..<n {
	let input = readLine()!.split(separator: " ").map {Int(String($0))!}
	chk[input[0], default: 0] = Int(String(input[1]*1000000+input[2]*10000+input[3]*100))!
}

var cnt = 0

for (key, value) in chk {
	if value > chk[k]! {
		cnt += 1
	}
}
print(cnt+1)
