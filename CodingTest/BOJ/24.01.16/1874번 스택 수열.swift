import Foundation

let n = Int(readLine()!)!
var chk = Array(repeating: 0, count: n)
for i in 0..<n {
	chk[i] = Int(readLine()!)!
}
var chkIdx = 0
var stack: [Int] = []
var resultChk: [Int] = []
var result: [String] = []

var value = 1

while true {
	if value > n {
		break
	}
	if stack.isEmpty {
		stack.append(value)
		value += 1
		result.append("+")
	} else {
		if stack.last! == chk[chkIdx] {
			resultChk.append(chk[chkIdx])
			result.append("-")
			stack.removeLast()
			chkIdx += 1
		} else {
			stack.append(value)
			value += 1
			result.append("+")
		}
	}
}

if !stack.isEmpty {
	while !stack.isEmpty {
		result.append("-")
		resultChk.append(stack.removeLast())
	}
}

if resultChk == chk {
	result.forEach { string in
		print(string)
	}
} else {
	print("NO")
}
