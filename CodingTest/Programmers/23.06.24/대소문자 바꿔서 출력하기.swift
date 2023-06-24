import Foundation

let s1 = readLine()!
var result = ""

for char in s1 {
	let upperChar = char.uppercased()
	let lowChar = char.lowercased()
	
	if upperChar == String(char) {
		result = result + lowChar
	} else {
		result = result + upperChar
	}
}

print(result)
