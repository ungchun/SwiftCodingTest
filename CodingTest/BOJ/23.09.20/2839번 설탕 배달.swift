import Foundation

var N = Int(readLine()!)!
var cnt = 0

while N >= 3 {
	if N / 5 >= 1 && N % 5 == 0 {
		cnt += (N / 5)
		N -= ((N / 5) * 5)
	} else if N >= 3 {
		N -= 3
		cnt += 1
	}
}

print(N != 0 ? -1 : cnt)
