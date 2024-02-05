import Foundation

let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var target = 1
var stack = [Int]()

while true {
	if arr.isEmpty {
		break
	}
	
	if stack.last ?? -1 == target {
		stack.removeLast()
		target += 1
	} else {
		let first = arr.removeFirst()
		if first == target {
			target += 1
		} else {
			stack.append(first)
		}
	}
}

if stack.isEmpty {
	print("Nice")
} else {
	var isSad = false
	while !stack.isEmpty {
		let first = stack.removeLast()
		if first == target {
			target += 1
		} else {
			isSad = true
			break
		}
	}
	if isSad {
		print("Sad")
	} else {
		print("Nice")
	}
}
