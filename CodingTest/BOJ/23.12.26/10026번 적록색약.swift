import Foundation

let n = Int(String(readLine()!))!
var picture: [[String]] = []

for _ in 0..<n {
	picture.append(readLine()!.map({String($0)}))
}
var normal: Int = 0
var abnormal: Int = 0

var normalVisit: [[Int]] = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
var abnormalVisit: [[Int]] = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)

var stack: [[Int]] = []

let dx: [Int] = [0,0,-1,1]
let dy: [Int] = [-1,1,0,0]

for i in 0..<n {
	for j in 0..<n {
		if normalVisit[i][j] == 0 {
			normalVisit[i][j] = 1
			normal += 1
			stack.append([i, j])
			while !stack.isEmpty {
				let now = stack.popLast()!
				let nowColor = picture[now[0]][now[1]]
				for k in 0..<dx.count {
					let nx = now[1] + dx[k]
					let ny = now[0] + dy[k]
					
					if nx < 0 || ny < 0 || nx >= n || ny >= n {
						continue
					} else {
						if normalVisit[ny][nx] == 1 {
							continue
						} else {
							if nowColor == picture[ny][nx] {
								normalVisit[ny][nx] = 1
								stack.append([ny, nx])
							}
						}
					}
				}
			}
		}
	}
}


stack = []
for i in 0..<n {
	for j in 0..<n {
		if abnormalVisit[i][j] == 0 {
			abnormalVisit[i][j] = 1
			abnormal += 1
			stack.append([i, j])
			while !stack.isEmpty {
				let now = stack.popLast()!
				let nowColor = picture[now[0]][now[1]]
				for k in 0..<dx.count {
					let nx = now[1] + dx[k]
					let ny = now[0] + dy[k]
					
					if nx < 0 || ny < 0 || nx >= n || ny >= n {
						continue
					} else {
						if abnormalVisit[ny][nx] == 1 {
							continue
						} else {
							if nowColor == "G" || nowColor == "R" {
								if picture[ny][nx] == "G" || picture[ny][nx] == "R" {
									abnormalVisit[ny][nx] = 1
									stack.append([ny, nx])
								}
							} else if nowColor == "B" {
								if picture[ny][nx] == "B" {
									abnormalVisit[ny][nx] = 1
									stack.append([ny, nx])
								}
							}
						}
					}
				}
			}
		}
	}
}

print("\(normal) \(abnormal)")
