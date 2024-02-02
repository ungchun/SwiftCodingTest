import Foundation

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0], m = nm[1]
var dict: [String: Bool] = [:]
var result: [String] = []

for _ in 0..<n {
	let input = readLine()!
	dict[input, default: false] = true
}

for _ in 0..<m {
	let input = readLine()!
	if dict[input, default: false] == true {
		result.append(input)
	}
}

print(result.count)
result.sort()
result.forEach { user in
	print(user)
}
