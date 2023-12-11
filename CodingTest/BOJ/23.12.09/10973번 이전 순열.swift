import Foundation

let n = Int(readLine()!)!
var target = readLine()!.split(separator: " ").map {Int(String($0))!}
var temp: Int = 0
var bigTemp = 0

if target.sorted(by: <) == target {
	print(-1)
} else {
	for i in 0..<target.count {
		if i + 1 < target.count, target[i] > target[i+1] {
			temp = i
		}
	}
	
	for i in (temp + 1)..<target.count {
		if target[temp] > target[i] {
			bigTemp = i
		}
	}
	
	target.swapAt(temp, bigTemp)
	target[(temp+1)..<target.count].sort(by: >)
	
	print(target.map{String($0)}.joined(separator: " "))
}
