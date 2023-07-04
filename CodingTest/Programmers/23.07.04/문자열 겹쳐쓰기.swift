import Foundation

func solution(_ my_string: String, _ overwrite_string: String, _ s: Int) -> String {
	let startIdx = my_string.index(my_string.startIndex, offsetBy: s)
	let endIdx = my_string.index(startIdx, offsetBy: overwrite_string.count)
	
	var newString = my_string
	newString.replaceSubrange(startIdx..<endIdx, with: overwrite_string)
	
	return newString
}
