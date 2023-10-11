import Foundation

func solution(_ A: String, _ B: String) -> Int {
	var temp = A
	var cnt = 0
	
	if A.count != B.count {
		return -1
	}
	
	if A == B {
		return 0
	}
	
	func canMatchAfterShifting() -> Bool {
		let a = temp.prefix(B.count-1)
		let b = temp.suffix(1)
		temp = String(b + a)
		cnt += 1
		return temp == B
	}
	
	for _ in 0..<A.count {
		if canMatchAfterShifting() {
			return cnt
		}
	}
	
	return -1
}

print(solution("abc", "bca"))
