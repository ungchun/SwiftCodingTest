import Foundation

let input = readLine()!.split(separator: "-").map {String($0)}
let first = input[0].split(separator: "+").map {Int(String($0))}
var result = 0
var temp = 0

for val in first {
	result += val!
}

for i in 1..<input.count {
	let tempVal = input[i].split(separator: "+").map {Int(String($0))}
	for j in 0..<tempVal.count {
		temp += tempVal[j]!
	}
	result -= temp
	temp = 0
}

print(result)
