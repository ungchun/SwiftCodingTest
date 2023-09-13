import Foundation

func solution(_ q:Int, _ r:Int, _ code:String) -> String {
	
	var cnt = 0
	var result = ""
	
	code.forEach { char in
		
		if cnt % q == r {
			result += String(char)
		}
		
		cnt += 1
	}
	
	return result
}
