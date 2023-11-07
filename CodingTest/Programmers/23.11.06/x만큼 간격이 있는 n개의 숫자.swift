import Foundation

func solution(_ x:Int, _ n:Int) -> [Int64] {
	
	var array:[Int64] = Array(repeating: 0, count: n)
	var idx = x
	var x = x
	
	for i in 0..<array.count {
		array[i] = Int64(x)
		x += idx
	}
	
	return array
}

print(solution(2, 5))
