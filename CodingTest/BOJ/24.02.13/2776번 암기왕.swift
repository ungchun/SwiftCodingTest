import Foundation

let n = Int(readLine()!)!

for _ in 0..<n {
	var answer = [String]()
	
	let _ = readLine()!
	let arr = Set(readLine()!.split(separator: " ").map { Int($0)! })
	
	let _ = readLine()!
	readLine()!.split(separator: " ").forEach { char in
		arr.contains(Int(char)!) ? answer.append("1") : answer.append("0")
	}
	
	print(answer.joined(separator: "\n"))
}
