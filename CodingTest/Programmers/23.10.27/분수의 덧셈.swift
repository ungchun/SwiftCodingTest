import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
	if b == 0 {
		return a
	} else {
		return gcd(b, a % b)
	}
}

func lcm(_ a: Int, _ b: Int) -> Int {
	return a * b / gcd(a, b)
}

func solution(_ numer1:Int, _ denom1:Int, _ numer2:Int, _ denom2:Int) -> [Int] {
	
	var val = lcm(denom1, denom2)
	
	var a = numer1*(val/denom1)+numer2*(val/denom2)
	var b = denom2*(val/denom2)
	
	var val2 = gcd(a, b)
	
	return [a/val2, b/val2]
}
