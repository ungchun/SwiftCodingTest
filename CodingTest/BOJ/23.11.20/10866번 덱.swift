import Foundation

let n = Int(readLine()!)!
var deque: [Int] = []

for _ in 0..<n {
	let input = String(readLine()!)
	
	let split = input.split(separator: " ")
	
	var val = 0
	if split.count == 2 {
		val = Int(split[1])!
	}
	
	switch String(split[0]) {
	case "push_front":
		deque.insert(val, at: 0)
		break
	case "push_back":
		deque.append(val)
		break
	case "pop_front":
		print(deque.isEmpty ? -1 : deque.removeFirst())
		break
	case "pop_back":
		print(deque.isEmpty ? -1 : deque.removeLast())
		break
	case "size":
		print(deque.count)
		break
	case "empty":
		print(deque.isEmpty ? 1 : 0)
		break
	case "front":
		print(deque.isEmpty ? -1 : deque.first!)
		break
	case "back":
		print(deque.isEmpty ? -1 : deque.last!)
		break
	default:
		break
	}
}
