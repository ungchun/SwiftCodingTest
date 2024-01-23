import Foundation

let s = readLine()!.map { $0 }
var result = Set<String>()

for i in 0..<s.count {
	var string = ""
	for j in i..<s.count {
		string += String(s[j])
		result.insert(string)
	}
}

print(result.count)
