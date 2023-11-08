import Foundation

func solution(_ s:String) -> String {
	
	return String(s.sorted(by: >))
}

print(solution("Zbcdefg"))
