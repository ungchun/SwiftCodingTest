import Foundation

func solution(_ dartResult:String) -> Int {
	var scores = dartResult.split(whereSeparator: {!$0.isNumber}).map {Int($0)!}
	let letters = dartResult.split(whereSeparator: {$0.isNumber})
	
	for (index, letter) in letters.enumerated() {
		letter.forEach {
			let score = scores[index]
			switch $0 {
			case "D":
				scores[index] = score * score
			case "T":
				scores[index] = score * score * score
			case "*":
				scores[index] = 2 * score
				if index - 1 >= 0 {
					scores[index-1] = 2 * scores[index-1]
				}
			case "#":
				scores[index] = -score
				break
			default:
				break
			}
		}
	}
	return scores.reduce(0, +)
}

print(solution("1S2D*3T"))
