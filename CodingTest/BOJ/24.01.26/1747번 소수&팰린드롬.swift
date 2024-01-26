import Foundation

var numbers = Array(repeating: 0, count: 1100001)
for i in 2...1100000{
	numbers[i] = i
}

for i in 2...1100000{
		if numbers[i] == 0{continue}
		for j in stride(from: i + i, through: 1100000, by: i){
			numbers[j] = 0
		}
}

let n = Int(readLine()!)!

for i in n...1100000 {
	let value = String(i)
	if numbers[i] != 0, value == value.map({Int(String($0))!}).reversed().map({String($0)}).joined() {
		print(i)
		break
	}
}
