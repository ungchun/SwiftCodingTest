import Foundation

var numbers = Array(repeating: 0, count: 1000001)
for i in 2...1000000{
	numbers[i] = i
}

for i in 2...1000000{
	if numbers[i] == 0 { continue }
	for j in stride(from: i + i, through: 1000000, by: i){
		numbers[j] = 0
	}
}

let t = Int(readLine()!)!
var arr = Array(repeating: 0, count: t)
var chk = Array(repeating: false, count: 1000001)
for i in 0..<t {
	arr[i] = Int(readLine()!)!
}

var result = [Int]()
var temp = 0
arr.forEach { num in
	for i in 2...1000000{
		if i == num {
			break
		}
		if numbers[i] != 0, !chk[i] {
			if numbers[num-i] != 0 {
				chk[i] = true
				chk[num-i] = true
				temp += 1
			}
		}
	}
	chk = Array(repeating: false, count: 1000001)
	result.append(temp)
	temp = 0
}
result.forEach { num in
	print(num)
}
