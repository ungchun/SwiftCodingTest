import Foundation

let n = Int(String(readLine()!))!
var stairs: [Int] = []
var value: [Int] = [Int](repeating: 0, count: n)

for _ in 0..<n{
	stairs.append(Int(String(readLine()!))!)
}

if n == 1 {
	print(stairs[0])
} else if n == 2{
	print(stairs[0] + stairs[1])
} else if n == 3 {
	print(max(stairs[0] + stairs[2], stairs[1] + stairs[2]))
} else {
	value[0] = stairs[0]
	value[1] = max(stairs[0]+stairs[1], stairs[1])
	value[2] = max(stairs[0]+stairs[2], stairs[1]+stairs[2])
	
	for i in 3..<stairs.count {
		value[i] = max(stairs[i] + value[i-2], stairs[i]+stairs[i-1]+value[i-3])
	}
	print(value[value.count-1])
}
