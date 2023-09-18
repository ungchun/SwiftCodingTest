import Foundation

let N = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map {Int(String($0))!}
let target1 = input[0]
let target2 = input[1]
let M = Int(readLine()!)!

var arr = Array(repeating: [Int](), count: N+1)

for _ in 0..<M {
	let input = readLine()!.split(separator: " ").map {Int(String($0))!}
	arr[input[0]].append(input[1])
	arr[input[1]].append(input[0])
}

var visited = [Int]()
var stack = [(target1, 0)]
var result = -1

while !stack.isEmpty {
	let node = stack.removeFirst()
	
	if node.0 == target2 {
		result = node.1
		break
	}

	let temp = arr[node.0]
	
	for i in 0..<temp.count {
		if !visited.contains(temp[i]) {
			visited.append(temp[i])
			stack.append((temp[i], node.1 + 1))
		}
	}
}
print(result)
