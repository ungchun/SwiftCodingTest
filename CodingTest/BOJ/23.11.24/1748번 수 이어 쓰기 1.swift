import Foundation

var n = Int(readLine()!)!
var divider = 100000000
var result = 0

while n > 10 {
	if n / divider >= 1 {
		result += ((n - divider + 1) * String(divider).count)
		 n = divider - 1
	} else {
		divider /= 10
	}
}

result += n

print(result)
