import Foundation

func isPrime(num: Int) -> Bool {
	if (num < 4) {
		return num == 1 || num == 0 ? false : true
	}
	for i in 2...Int(sqrt(Double(num))) {
		if (num % i == 0) { return false }
	}
	return true
}

var cnt = 0
while true {
	let input = Int(readLine()!)!
	cnt = 0
	if input == 0 {
		break
	}
	
	for i in input+1...2*input {
		if isPrime(num: i) {
			cnt += 1
		}
	}
	print(cnt)
}
