import Foundation

func solution(_ s:String, _ n:Int) -> String {
	var array: [String] = []
	s.forEach { char in
		if String(char) == " " {
			array.append(" ")
		} else {
			var code = Int(UnicodeScalar(String(char))!.value)
			switch code {
			case 65...90:
				code = (code + n - 65) % 26 + 65
			case 97...122:
				code = (code + n - 97) % 26 + 97
			default:
				break
			}
			array.append(String(UnicodeScalar(code)!))
		}
	}
	return array.joined()
}

print(solution("AB", 1))
