import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
	var section = section
	
	var idx = section.first!
	var result = 0
	while !section.isEmpty {
		print(section)
		result += 1
		let first = section.removeFirst()
		while true {
			print("? \(section)")
			if section.isEmpty || section.first! >= first + m {
				break
			} else {
				section.removeFirst()
			}
		}
	}
	return result
}

//print(solution(8, 4, [2, 3, 6]))
print(solution(4, 1, [1, 2, 3, 4]))
