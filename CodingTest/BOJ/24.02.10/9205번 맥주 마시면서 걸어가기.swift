import Foundation

let t = Int(readLine()!)!

for _ in 0..<t {
	var edges: [(Int,Int)] = []
	let num = Int(readLine()!)!
	
	let homeInput = readLine()!.split(separator: " ").map{Int(String($0))!}
	edges.append((homeInput[0], homeInput[1]))
	
	var superXY = [(Int, Int)]()
	for _ in 0..<num {
		let input = readLine()!.split(separator: " ").map{Int(String($0))!}
		edges.append((input[0], input[1]))
	}
	
	let lockInput = readLine()!.split(separator: " ").map{Int(String($0))!}
	edges.append((lockInput[0], lockInput[1]))
	
	var graph = Array(repeating: [Int](), count: num+2)
	
	let len = edges.count
	
	for i in 0..<len-1 {
		for j in i+1..<len {
			if abs(edges[i].0 - edges[j].0) + abs(edges[i].1 - edges[j].1) <= 1000 {
				graph[i].append(j)
				graph[j].append(i)
			}
		}
	}
	var queue = [0]
	var idx = 0
	var visit = Array(repeating: false, count: num+2)
	visit[0] = true
	var chk = false
	
	while queue.count > idx {
		let cur = queue[idx]
		idx += 1
		
		if cur == num+1 {
			chk = true
			break
		}
		
		for nx in graph[cur] where visit[nx] == false {
			visit[nx] = true
			queue.append(nx)
		}
	}
	
	if chk {
		print("happy")
	} else {
		print("sad")
	}
}
