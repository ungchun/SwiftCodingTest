import Foundation

let NM = readLine()!.split(separator: " ").map {Int(String($0))!}
let N = NM[0]
var M = NM[1]

var h = readLine()!.split(separator: " ").map {Int(String($0))!}

h.sort(by: <)

for i in 0..<N {
	if h[i] <= M {
		M += 1
	}
}

print(M)
