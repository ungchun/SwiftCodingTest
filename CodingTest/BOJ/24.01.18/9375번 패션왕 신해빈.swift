import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {
	let N = Int(readLine()!)!
	var clothesDict: Dictionary<String, [String]> = [:]
	
	for _ in 0..<N {
		let input = readLine()!.components(separatedBy: " ")
		
		if clothesDict[input.last!] == nil {
			clothesDict[input.last!] = [input.first!]
		} else {
			clothesDict[input.last!]?.append(input.first!)
		}
	}
	
	var cnt = 1
	for clothes in clothesDict {
		cnt *= clothes.value.count + 1
	}
	print(cnt - 1)
}
