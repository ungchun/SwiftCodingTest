import Foundation

let maxNumber: Int = 1000000
var numbers: [Bool] = [Bool](repeating: true, count: maxNumber + 1)
numbers[1] = false
Array(2 ... maxNumber / 2).forEach {
		var count: Int = 2
		while $0 * count <= maxNumber {
				numbers[$0 * count] = false
				count += 1
		}
}

while true {
		let n = Int(readLine()!)!
		
		if n == 0 { break }
		
		for i in 3...n {
				if numbers[i] {
						let m = n - i
						if numbers[m] {
								print("\(n) = \(i) + \(m)")
								break
						}
				}
		}
}
