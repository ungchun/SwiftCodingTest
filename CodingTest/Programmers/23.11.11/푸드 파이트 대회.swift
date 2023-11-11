import Foundation

func solution(_ food:[Int]) -> String {
	var food = food
	food.removeFirst()

	var idx = 1
	var tempValue = ""
	
	food.forEach { value in
		tempValue += Array(repeating: String(idx), count: value / 2).joined()
		idx += 1
	}
	return tempValue + "0" + tempValue.reversed()
}

print(solution([1, 3, 4, 6]))
