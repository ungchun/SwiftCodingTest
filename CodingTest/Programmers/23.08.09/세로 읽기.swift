import Foundation

func solution(_ my_string:String, _ m:Int, _ c:Int) -> String {
	
	var arr = Array(repeating: Array(repeating: "", count: m), count: my_string.count/m)
	var copyString = my_string
	
	for i in 0..<my_string.count / m {
		for j in 0..<m {
			arr[i][j] = String(describing: copyString.removeFirst())
		}
	}
	
	var result = ""
	
	for i in 0..<my_string.count / m {
		result += arr[i][c-1]
	}
	
	return result
}
