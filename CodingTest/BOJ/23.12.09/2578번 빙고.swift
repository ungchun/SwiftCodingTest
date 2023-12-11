import Foundation

var arr = [[Int]]()
var calledNumbers = [Int]()

(1...5).forEach { _ in
	let line = readLine()!.components(separatedBy: " ").map{Int($0)!}
	arr.append(line)
}

(1...5).forEach { _ in
	let line = readLine()!.components(separatedBy: " ").map{Int($0)!}
	calledNumbers.append(contentsOf: line)
}

for (count, number) in calledNumbers.enumerated() {
	for i in 0..<5 {
		if let targetIndex = arr[i].firstIndex(of: number) {
			arr[i][targetIndex] = 0
			break
		}
	}
	
	if isBingo() {
		print(count+1)
		break
	}
}

private func isBingo() -> Bool {
	var line = 0
	
	for row in arr {
		if row.filter({ $0 == 0 }).count == 5 {
			line += 1
		}
	}
	
	for i in 0..<5 {
		if[arr[0][i], arr[1][i], arr[2][i], arr[3][i], arr[4][i]].filter({ $0 == 0}).count == 5 {
			line += 1
		}
	}
	
	var cross1 = [Int]()
	var cross2 = [Int]()
	for i in 0..<5 {
		cross1.append(arr[i][i])
		cross2.append(arr[4-i][i])
	}
	
	for cross in [cross1, cross2] {
		if cross.filter({$0 == 0}).count == 5 {
			line += 1
		}
	}
	
	return line >= 3
}
