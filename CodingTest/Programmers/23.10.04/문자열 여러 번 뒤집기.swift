import Foundation

func solution(_ s: String, _ queries: [[Int]]) -> String {
	var characters = Array(s)
	
	for query in queries {
		let startIndex = query[0]
		let endIndex = query[1]
		
		let substringToReverse = characters[startIndex...endIndex]
		
		characters.replaceSubrange(startIndex...endIndex, with: substringToReverse.reversed())
	}
	
	return String(characters)
}

print(solution("rermgorpsam", [[2, 3], [0, 7], [5, 9], [6, 10]]))
