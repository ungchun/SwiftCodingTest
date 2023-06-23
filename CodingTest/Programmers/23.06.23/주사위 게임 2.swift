import Foundation

func solution(_ a:Int, _ b:Int, _ c:Int) -> Int {
	
	let one = a+b+c
	let two = pow(Double(a), 2) + pow(Double(b), 2) + pow(Double(c), 2)
	let three = pow(Double(a), 3) + pow(Double(b), 3) + pow(Double(c), 3)

	if a == b && b == c && a == c {
		return Int(Double(one) * two * three)
	} else if a != b && b != c && a != c {
		return one
	} else {
		return Int(Double(one) * two)
	}
}

print(solution(2, 6, 1))
