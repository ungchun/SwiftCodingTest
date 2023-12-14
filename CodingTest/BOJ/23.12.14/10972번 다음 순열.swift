import Foundation

let n = Int(readLine()!)!
var line = readLine()!.split(separator: " ").map{Int(String($0))!}

if Array(1...n).reversed() == line {
	print(-1)
} else {
	var idx = 0
	for i in 0..<n{
		if i + 1 < n, line[i] < line[i + 1] {
			idx = i
		}
	}
	
	var biggerIdx = 0
	for i in idx..<n {
		if line[idx] < line[i] {
			 biggerIdx = i
		 }
	}
	
	line.swapAt(idx, biggerIdx)
	line[(idx+1)..<line.count].sort(by: <)
	for i in 0..<line.count {
		print(line[i], terminator: " ")
	}
}
