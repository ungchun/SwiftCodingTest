import Foundation

let n = Int(readLine()!)!
var arr = [Int]()
for _ in 0..<n {
	arr.append(Int(readLine()!)!)
}

arr.sort(by: >)

var idx = 0
var value = -1
while idx < arr.count-2 {
	let a = arr[idx]
	let b = arr[idx+1]
	let c = arr[idx+2]
	if chk(a: a, b: b, c: c) {
		value = a+b+c
		break
	}
	idx += 1
}

print(value)

func chk(a: Int, b: Int, c: Int) -> Bool {
	if a+b > c, a+c > b, b+c > a {
		return true
	} else {
		return false
	}
}
