import Foundation

let S = Int(readLine()!)!
var result = 0
var count = 0

while true {
	if result + count > S {
		break
	}
	result += count
	count += 1
}

print(count-1)
