import Foundation

let count = Int(readLine()!)!

var strs = [[String]]()
var dict = [String : Int]()

for _ in 0..<count {
	let str = readLine()!.reversed().map{String($0)}
	strs.append(str)
}

//print(strs)

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

//print(dict)

let sorted = dict.sorted {$0.value > $1.value}
var sum = 0
var multi = 9
sorted.forEach {
	sum += $0.value * multi
	multi -= 1
}

print(sum)
