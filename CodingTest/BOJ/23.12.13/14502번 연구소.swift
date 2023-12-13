import Foundation

let nm = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = nm[0]
let m = nm[1]
var lab = [[Int]]()
var empty = [(Int, Int)]()
var virus = [(Int, Int)]()
var max = 0
let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1, 1]

for _ in 0..<n {
	lab.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}

for y in 0..<n {
	for x in 0..<m {
		if lab[y][x] == 0 {
			empty.append((y, x))
		} else if lab[y][x] == 2 {
			virus.append((y, x))
		}
	}
}

// 전체 돌면서 1 넣어주기
for i in 0..<empty.count {
	for j in 0..<i {
		for k in 0..<j {
			let y1 = empty[i].0
			let x1 = empty[i].1
			let y2 = empty[j].0
			let x2 = empty[j].1
			let y3 = empty[k].0
			let x3 = empty[k].1
			
			lab[y1][x1] = 1
			lab[y2][x2] = 1
			lab[y3][x3] = 1
			
			let newLab = lab
			bfs(copyLab: newLab)
			
			lab[y1][x1] = 0
			lab[y2][x2] = 0
			lab[y3][x3] = 0
		}
	}
}

func bfs(copyLab: [[Int]]) {
	var bfsLab = copyLab
	var queue = [(Int, Int)]()
	var cnt = 0
	
	for i in 0..<virus.count {
		queue.append(virus[i])
	}
	
	while !queue.isEmpty {
		let now = queue.removeFirst()
		
		for i in 0..<4 {
			let nextY = now.0 + dy[i]
			let nextX = now.1 + dx[i]
			 
			if nextX >= 0 && nextY >= 0 && nextY < n && nextX < m {
				if bfsLab[nextY][nextX] == 0 {
					queue.append((nextY, nextX))
					bfsLab[nextY][nextX] = 2
				}
			}
		}
	}
	
	for i in 0..<n {
		cnt += bfsLab[i].filter { ($0) == 0 }.count
	}
	
	if max < cnt {
		max = cnt
	}
}

print(max)
