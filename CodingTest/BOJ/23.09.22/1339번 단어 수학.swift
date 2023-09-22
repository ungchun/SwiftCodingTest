import Foundation

let count = Int(readLine()!)!

var strs = [[String]]()
var dict = [String : Int]()

for _ in 0..<count {
	let str = readLine()!.reversed().map{String($0)}
	strs.append(str)
}

for i in 0..<strs.count {
	for j in 0..<strs[i].count {
		let tar = strs[i][j]
		if let _ = dict[tar] {
			dict[tar]! += Int(pow(Double(10), Double(j)))
		} else {
			dict[tar] = Int(pow(Double(10), Double(j)))
		}
	}
}

let sort = dict.values.sorted(by: >)

var result = 0
var temp = 9
sort.forEach { val in
	result += (val * temp)
	temp -= 1
}

print(result)
