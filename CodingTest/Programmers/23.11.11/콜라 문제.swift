import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
	var n = n
	var result = 0
	
	while n >= a {
		let temp = n / a
		result += (temp*b)
		let temp2 = n % a
		
		n = (temp*b) + temp2
	}
	
	return result
}

print(solution(3, 2, 10))
print(solution(3, 1, 20))
