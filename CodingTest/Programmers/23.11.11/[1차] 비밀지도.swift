import Foundation

func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
	var answer: [String] = []
	var sol_arr1: [String] = arr1.map {String($0)}
	var sol_arr2: [String] = arr2.map {String($0)}

	for i in 0..<arr1.count {
		if String(arr1[i], radix: 2).count < n {
			let temp = String(Array(repeating: "0", count: n - String(arr1[i], radix: 2).count).joined())
			sol_arr1[i] = temp + String(arr1[i], radix: 2)
		} else {
			sol_arr1[i] = String(arr1[i], radix: 2)
		}
		
		if String(arr2[i], radix: 2).count < n {
			let temp = String(Array(repeating: "0", count: n - String(arr2[i], radix: 2).count).joined())
			sol_arr2[i] = temp + String(arr2[i], radix: 2)
		} else {
			sol_arr2[i] = String(arr2[i], radix: 2)
		}
	}
	

	var result: [String] = []
	
	let arr_sol_arr1 = sol_arr1.map {Array(String($0))}
	let arr_sol_arr2 = sol_arr2.map {Array(String($0))}

	for i in 0..<arr_sol_arr1.count {
		var tempValue = ""
		for j in 0..<arr_sol_arr1.count {
			if arr_sol_arr1[i][j] == "1" || arr_sol_arr2[i][j] == "1" {
				tempValue += "#"
			} else {
				tempValue += " "
			}
		}
		result.append(tempValue)
	}
	
	return result
}
