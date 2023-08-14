import Foundation

func solution(_ my_string: String, _ s: Int, _ e: Int) -> String {
	var result = Array(my_string)
	var start = s
	var end = e
	
	while start < end {
		result.swapAt(start, end)
		start += 1
		end -= 1
	}
	
	return String(result)
}
