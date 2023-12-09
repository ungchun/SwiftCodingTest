import Foundation

let n = Int(readLine()!)!

var stack = Array(repeating: 0, count: n)

for i in 0..<n {
	stack[i] = i+1
}

while !stack.isEmpty {
	let remove = stack.removeFirst()
	print(remove, terminator: " ")
	if stack.isEmpty {
		break
	}
	let first = stack.removeFirst()
	stack.append(first)
}
