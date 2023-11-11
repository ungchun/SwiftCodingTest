import Foundation

func solution(_ s:String) -> String {
	var arr: [String] = []
	
	var idx = 0
	s.forEach { char in
		if idx % 2 == 0 {
			arr.append(char.uppercased())
		} else {
			arr.append(char.lowercased())
		}
		idx += 1
		if char == " " {
			idx = 0
		}
	}
	return arr.joined()
}

print(solution("aaa  "))
