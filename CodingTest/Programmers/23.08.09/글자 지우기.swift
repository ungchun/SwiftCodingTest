import Foundation

func solution(_ my_string:String, _ indices:[Int]) -> String {
	
	let arr = Array(repeating: "", count: my_string.count)
	
	var copyString = my_string.map {String($0)}
	
	indices.forEach { val in
		copyString[val] = ""
	}
	
	let result = copyString.reduce("", +)
	
	return result
}
