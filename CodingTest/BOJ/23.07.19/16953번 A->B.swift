import Foundation

let AB = readLine()!.split(separator: " ").map {Int(String($0))!}
let A = AB[0]
var B = AB[1]
var result = 0

while A != B {
	if A > B {
		break
	}
	if B % 2 == 0 {
		B /= 2
	} else if String(B).last == "1" {
		var temp = String(B)
		temp.removeLast()
		B = Int(temp)!
	} else {
		break
	}
	result += 1
}

print(A==B ? result+1 : -1)
