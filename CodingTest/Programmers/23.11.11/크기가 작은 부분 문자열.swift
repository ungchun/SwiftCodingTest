import Foundation

func solution(_ t:String, _ p:String) -> Int {
	var result = 0
	for i in 0...t.count-p.count {
		let start = t.index(t.startIndex, offsetBy: i)
		let end = t.index(t.startIndex, offsetBy: i+p.count)
		let subString = t.substring(with: start..<end)
		print(subString)
		if Int(subString)! <= Int(p)! {
			result += 1
		}
	}
	
	return result
}

print(solution("10203", "15"))
