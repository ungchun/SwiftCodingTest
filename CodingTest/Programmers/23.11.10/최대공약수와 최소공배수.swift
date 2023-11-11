func solution(_ n: Int, _ m: Int) -> [Int] {
	// 최대공약수 계산
	let gcdValue = gcd(n, m)
	
	// 최소공배수 계산
	let lcmValue = lcm(n, m, gcdValue)
	
	return [gcdValue, lcmValue]
}

// 최대공약수 계산
func gcd(_ a: Int, _ b: Int) -> Int {
	var num1 = a
	var num2 = b
	while num2 != 0 {
		let temp = num1 % num2
		num1 = num2
		num2 = temp
	}
	return num1
}

// 최소공배수 계산
func lcm(_ a: Int, _ b: Int, _ gcdValue: Int) -> Int {
	return a * b / gcdValue
}
