import Foundation

let NL = readLine()!.split(separator: " ").map {Int(String($0))!}

let N = NL[0]
let L = NL[1]

var arr = readLine()!.split(separator: " ").map {Double(String($0))!}

arr.sort(by: <)

var temp = 0.0
var result = 0

arr.forEach { val in
	if temp == 0.0 || temp < val {
		temp = (Double(val) - 0.5) + Double(L)
		result += 1
	}
}

print(result)
