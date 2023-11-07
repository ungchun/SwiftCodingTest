func solution(_ phone_number: String) -> String {
	let length = phone_number.count
	if length <= 4 {
		return phone_number
	} else {
		let startIndex = phone_number.startIndex
		let endIndex = phone_number.index(startIndex, offsetBy: length - 4)
		let hiddenPart = String(repeating: "*", count: length - 4)
		let visiblePart = String(phone_number[endIndex...])
		return hiddenPart + visiblePart
	}
}
