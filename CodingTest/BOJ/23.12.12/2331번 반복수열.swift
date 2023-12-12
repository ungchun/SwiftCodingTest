import Foundation

var ap = readLine()!.split(separator: " ").map {Int(String($0))!}
var a = ap[0], p = ap[1]
var duplicateChk: [Int:Int] = [:]
var result = [Int]()

duplicateChk[a, default: 0] = 1
result.append(a)

while true {
	let split = String(a).map {Int(String($0))!}
	var temp = 0.0
	for value in split {
		temp += pow(Double(value), Double(p))
	}
	duplicateChk[Int(temp), default: 0] += 1
	if duplicateChk[Int(temp), default: 0] == 2 {
		if let idx = result.firstIndex(of: Int(temp)) {
			result = Array(result[0..<idx])
		}
		break
	}
	result.append(Int(temp))
	a = Int(temp)
}
print(result.count)
