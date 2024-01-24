import Foundation

let input = readLine()!
var cnt = 0
var stack = 0
var charChk = false

input.forEach { char in
	if char == "(" {
		charChk = true
		stack += 1
	} else {
		stack -= 1
		if charChk {
			cnt += stack
			charChk = false
		} else {
			cnt += 1
		}
	}
}

print(cnt)
