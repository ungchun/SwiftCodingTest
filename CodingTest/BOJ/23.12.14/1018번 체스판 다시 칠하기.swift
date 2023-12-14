import Foundation

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0], m = nm[1]
var map: [[String]] = []

for _ in 0..<n {
	let input = readLine()!.map{String($0)}
	map.append(input)
}

var min = Int.max
var cnt = 0

var y = 0
var x = 0
var before = ""
while true {
	for i in y..<y+8 {
		for j in x..<x+8 {
			if before == "" {
				before = map[i][j]
			} else {
				if before == map[i][j] {
					cnt += 1
					if before == "W" {
						before = "B"
					} else {
						before = "W"
					}
				} else {
					before = map[i][j]
				}
				
				if j == x+8-1 {
					if before == "W" {
						before = "B"
					} else {
						before = "W"
					}
				}
			}
		}
	}
	if cnt < min {
		min = cnt
	}
	cnt = 0
	before = ""
	if y+1+8 > n {
		y = 0
		if x+1+8 > m {
			break
		} else {
			x += 1
		}
	} else {
		y += 1
	}
}

print(min)
