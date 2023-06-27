import Foundation

var N = Int(readLine()!)!
var count = 0

while true {
	if N < 3 {
		break
	}
	
	if N % 5 == 0 {
		count += (N / 5)
		N %= 5
	} else {
		N -= 3
		count += 1
	}
}

print(N == 0 ? count : -1)
