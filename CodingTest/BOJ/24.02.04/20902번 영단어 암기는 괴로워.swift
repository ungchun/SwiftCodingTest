import Foundation

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0], m = nm[1]
var dict: [String:Int] = [:]

for _ in 0..<n {
	let input = readLine()!
	if input.count >= m {
		dict[input, default: 0] += 1
	}
}

dict.sorted { $0.key < $1.key }.sorted {$0.key.count > $1.key.count}.sorted { $0.value > $1.value }.forEach { key, value in
	print(key)
}
