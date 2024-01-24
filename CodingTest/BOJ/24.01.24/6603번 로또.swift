import Foundation

var data: [Int] = []
var arr: [Int] = []

while true {
	var line = readLine()!.split(separator: " ").map{Int(String($0))!}
	let k = line.removeFirst()
	data = line
	if k == 0 {
		break
	}
	dfs(0)
	print()
}

func dfs(_ depth: Int) {
	if depth == 6 {
		print(arr.map{String($0)}.joined(separator: " "))
		return
	}
	
	for i in depth..<data.count {
		if arr.contains(data[i]) || arr.last ?? Int.min > data[i] {
			continue
		}
		arr.append(data[i])
		dfs(depth+1)
		arr.removeLast()
	}
}
