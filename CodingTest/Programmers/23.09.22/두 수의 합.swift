import Foundation

func solution(_ a:String, _ b:String) -> String {
	var a = a, b = b
	var temp = 0
	var result = ""
	
	while true {
		var sum = temp
		
		if a != "" {
			sum += Int(String(a.last!))!
			a.removeLast()
		}
		
		if b != "" {
			sum += Int(String(b.last!))!
			b.removeLast()
		}
		
		result = String(sum % 10) + result
		
		temp = sum / 10

		if a == "" && b == "" {
			break
		}
	}
	
	if temp != 0 {
		result = String(temp) + result
	}
	
	return result
}
