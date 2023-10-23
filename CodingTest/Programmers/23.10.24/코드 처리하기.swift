import Foundation

func solution(_ code:String) -> String {
	let codeArray = Array(code)
	var mode = true
	var result = [String]()
	
	if code.isEmpty {
		return "EMPTY"
	} else {
		for i in 0..<codeArray.count {
			if codeArray[i] == "1" {
				mode.toggle()
			} else {
				if mode { // mode == 0
					if i % 2 == 0 {
						result.append(String(codeArray[i]))
					}
				} else { // mode == 1
					if i % 2 != 0 {
						result.append(String(codeArray[i]))
					}
				}
			}
			
		}
		
		return result.isEmpty ? "EMPTY" : result.reduce("", +)
	}
}
