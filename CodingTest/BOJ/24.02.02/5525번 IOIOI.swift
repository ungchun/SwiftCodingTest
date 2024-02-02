import Foundation

let N = Int(String(readLine()!))!
let M = Int(String(readLine()!))!
let S = Array(readLine()!).map{String($0)}
var index = 0
var pIndex = 0
var total = 0

while index < M - 2 {
	if S[index...index+2] == ["I", "O", "I"] {
		pIndex += 1
		if pIndex == N {
			total += 1
			pIndex -= 1
		}
		index += 2
	} else {
		pIndex = 0
		index += 1
	}
}

print(total)
