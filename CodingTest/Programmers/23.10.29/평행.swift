import Foundation

func slope(_ dot1: [Int], _ dot2: [Int]) -> Double{
	return Double(dot2[1] - dot1[1]) / Double(dot2[0] - dot1[0])
}

func solution(_ dots:[[Int]]) -> Int {
	
	if slope(dots[0], dots[1]) == slope(dots[2], dots[3]) {return 1}
	if slope(dots[0], dots[2]) == slope(dots[1], dots[3]) {return 1}
	if slope(dots[0], dots[3]) == slope(dots[1], dots[2]) {return 1}

	return 0
}
