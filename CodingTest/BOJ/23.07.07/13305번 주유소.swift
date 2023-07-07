import Foundation

let N = Int(readLine()!)!
let length = readLine()!.split(separator: " ").map {Int(String($0))!}
let price = readLine()!.split(separator: " ").map {Int(String($0))!}

var min = price[0]
var result = 0

for i in 0..<length.count {
	if price[i] < min {
		min = price[i]
	}
	
	result += (length[i] * min)
}

print(result)
