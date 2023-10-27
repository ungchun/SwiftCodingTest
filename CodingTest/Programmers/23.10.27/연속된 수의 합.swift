import Foundation

func solution(_ num:Int, _ total:Int) -> [Int] {
	
	var target = 0
	if total == 0 {
		target = num
	} else {
		target = total / num
	}
	
	var array = Array(repeating: 1000, count: num)
	
	while total != array.reduce(0, +) {
		var temp = target
		for i in 0..<num {
			array[i] = temp
			temp += 1
		}
		if array.reduce(0, +) > total {
			target -= 1
		} else {
			target += 1
		}
	}
	
	return array
}
