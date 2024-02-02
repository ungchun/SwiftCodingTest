import Foundation

let N = Int(readLine()!)!
var arr = [Int]()
for _ in 0..<N {
		let q = Int(readLine()!)!
	arr.append(q)
}

arr.sort(by: >)
arr.forEach { value in
	print(value)
}
