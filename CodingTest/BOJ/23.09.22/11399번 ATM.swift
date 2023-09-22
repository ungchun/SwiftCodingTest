import Foundation

let N = Int(readLine()!)!
var P = readLine()!.split(separator: " ").map {Int(String($0))!}

P.sort(by: <)

var result = P[0]
var before = P[0]

for i in 1..<P.count {
	let after = before + P[i]
	before = after
	result += after
}

print(result)
