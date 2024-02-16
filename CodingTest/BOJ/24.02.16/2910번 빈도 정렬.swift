import Foundation

let nc = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nc[0], c = nc[1]
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var dict = [Int: (Int, Int)]()
var cnt = 0
arr.forEach { num in
	if dict[num] == nil {
		dict[num, default: (0, 0)] = (1, cnt)
		cnt += 1
	} else {
		dict[num, default: (0, 0)].0 += 1
	}
}

let test = dict.sorted { $0.value.0 == $1.value.0 ? $0.value.1 < $1.value.1 : $0.value.0 > $1.value.0 }
test.forEach { (key: Int, value: (Int, Int)) in
	for _ in 0..<value.0 {
		print(key, terminator: " ")
	}
}
