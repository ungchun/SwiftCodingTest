import Foundation

var map = [[Int]]()
for _ in 0..<5 {
	map.append(readLine()!.split(separator: " ").map{ Int($0)! })
}

let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1, 1]

var answerList = [String]()

func dfs(x: Int, y: Int, value: String) {
	var temp = value
	temp += String(map[x][y])
	
	if temp.count == 6 {
		answerList.append(temp)
		return
	}
	
	for i in 0..<4 {
		let nx = x + dx[i]
		let ny = y + dy[i]
		
		if nx < 0 || ny < 0 || nx >= 5 || ny >= 5 {
			continue
		} else {
			dfs(x: nx, y: ny, value: temp)
		}
	}
}

for i in 0..<5 {
	for j in 0..<5 {
		dfs(x: i, y: j, value: "")
	}
}

print(Set(answerList).count)
