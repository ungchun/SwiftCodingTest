import Foundation

let k = Int(readLine()!)!
var sum = (1,0)
for _ in 0..<k {
	var temp = (0,0)
	temp.0 += sum.1
	temp.1 += sum.0 + sum.1
	sum = temp
}
print(sum.0, sum.1)
