import Foundation

let N = Int(readLine()!)!
let milks = readLine()!.split(separator: " ").map {Int(String($0))!}

var cnt = 0
var now = 0
milks.forEach { milk in
	if milk == now {
		cnt += 1
		if now == 0 {
			now = 1
		} else if now == 1 {
			now = 2
		} else {
			now = 0
		}
	}
}

print(cnt)
