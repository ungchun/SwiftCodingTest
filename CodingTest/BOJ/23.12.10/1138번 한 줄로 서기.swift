import Foundation

let n = Int(readLine()!)!
var input = readLine()!.split(separator: " ").map {Int(String($0))!}
var result = Array(repeating: 0, count: n)

result[0] = n
input.removeLast()
input.reverse()

for i in 0..<input.count {
	let now = n - (i+1)
	var chk = 0
	if input[i] == 0 {
		result.insert(now, at: 0)
		result.removeLast()
	} else {
		for j in 0..<result.count {
			if result[j] > now {
				chk += 1
			}
			if chk == input[i] {
				result.insert(now, at: j+1)
				result.removeLast()
				chk = 0
				break
			}
		}
		if chk != 0 {
			result[n-1] = now
		}
	}
}

print(result.map {String($0)}.joined(separator: " "))
