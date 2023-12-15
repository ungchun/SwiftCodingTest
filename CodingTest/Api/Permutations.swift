import Foundation

// BOJ 10974

let n = Int(readLine()!)!
var picked = [Int]()
var visited = Array(repeating: false, count: n)

func pick(toPick: Int) {
	if toPick == 0 {
		print(picked.map { String($0) }.joined(separator: " "))
		return
	}
	for i in 0..<n {
		if visited[i] {
			continue
		}
		picked.append(i+1)
		visited[i] = true
		pick(toPick: toPick - 1)
		visited[i] = false
		picked.removeLast()
	}
}
pick(toPick: n)

//

let N = Int(readLine()!)!

var visited = Array(repeating: false, count: N + 1)
var arr = Array(repeating: 0, count: N)

func dfs(_ index: Int) {
	print("arr \(arr)")
	print("visited \(visited)")
	print("index \(index)")
	print()
	if (index == N) {
		print(arr.map{String($0)}.joined(separator: " "))
		print()
		return
	}
	
	for i in 1...N {
		if (visited[i]) {continue}
		print("for i \(i)")
		print("for idx \(index)")
		arr[index] = i
		visited[i] = true
		dfs(index+1)
		visited[i] = false
		print("after index \(index)")
		print("after visited \(visited)")
	}
}

dfs(0)
