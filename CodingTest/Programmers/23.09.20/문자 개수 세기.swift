import Foundation

func solution(_ my_string: String) -> [Int] {

	var counts = Array(repeating: 0, count: 52)
	
	for char in my_string {
		if char.isLetter {
			let asciiValue = char.asciiValue!
			var index: Int
			
			if asciiValue >= 65 && asciiValue <= 90 {
				index = Int(asciiValue - 65)
			} else if asciiValue >= 97 && asciiValue <= 122 {
				index = Int(asciiValue - 97 + 26)
			} else {
				continue
			}
			
			counts[index] += 1
		}
	}
	
	return counts
}
