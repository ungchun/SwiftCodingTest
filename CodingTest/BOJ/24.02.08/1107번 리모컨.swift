import Foundation

var n = Int(String(readLine()!))!
let m = Int(String(readLine()!))!
var arr: [Int] = []
if m != 0 {
	arr = readLine()!.split(separator: " ").map{Int(String($0))!}
}

var minCnt = abs(n - 100)
for i in 0...1000000 {
	let len = check(i)
	if len > 0 {
		let press = abs(n - i)
		minCnt = min(minCnt, len + press)
	}
}
print(minCnt)

func check(_ i: Int) -> Int{
	var n = i
	if n == 0 {
		if arr.contains(0) {
			return 0
		}else{
			return 1
		}
	}
	var len = 0
	while n > 0 {
		if arr.contains(n % 10) {return 0}
		n = n / 10
		len += 1
	}
	return len
}
