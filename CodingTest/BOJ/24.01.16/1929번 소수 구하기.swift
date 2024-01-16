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

let mn = readLine()!.split(separator: " ").map{Int(String($0))!}
let m = mn[0], n = mn[1]

for i in m...n {
	if isPrime(num: i) {
		print(i)
	}
}
