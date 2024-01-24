import Foundation

func isPrime(_ num: Int) -> Bool {
	if num < 4 {
		return num == 1 || num == 0 ? false : true
	}
	for i in 2...Int(sqrt(Double(num))) {
		if (num % i == 0) { return false }
	}
	return true
}

let t = Int(readLine()!)!

for _ in 0..<t {
	var minValue = Int.max
	var result: (Int, Int) = (0, 0)
	let input = Int(readLine()!)!
	var dict: [Int:Bool] = [:]
	
	for value in stride(from: input, through: 0, by: -1) {
		if isPrime(value) {
			if dict[value, default: false] {
				break
			}
			dict[value, default: false] = true
			if isPrime(input-value) {
				dict[input-value, default: false] = true
				if minValue > abs(value-(input-value)) {
					minValue = abs(value-(input-value))
					if value > (input-value) {
						result.0 = (input-value)
						result.1 = value
					} else {
						result.0 = value
						result.1 = (input-value)
					}
				}
			}
		}
	}
	print("\(result.0) \(result.1)")
}
