import Foundation

func solution(_ wallpaper:[String]) -> [Int] {
	var lux: Int = wallpaper.count
	var luy: Int = wallpaper[0].count
	
	var rdx: Int = -1
	var rdy: Int = -1
	
	
	for index in 0..<wallpaper.count {
		let paper = wallpaper[index]
		if paper.contains("#") {
			if lux > index {
				lux = index
			}
			
			if let first = paper.firstIndex(of: "#") {
				let distance = paper.distance(from: paper.startIndex, to: first)
				if luy > distance {
					luy = distance
				}
			}
			
			if let last = paper.lastIndex(of: "#") {
				let distance = paper.distance(from: paper.startIndex, to: last)
				if rdy < distance + 1 {
					rdy = distance + 1
				}
			}
			
			if rdx < index + 1 {
				rdx = index + 1
			}
		}
	}
	
	return [lux, luy, rdx, rdy]
}

print(solution([".#...", "..#..", "...#."]))

// 오른쪽 아래는 끝점 + 1
