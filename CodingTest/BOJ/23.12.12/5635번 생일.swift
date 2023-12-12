import Foundation

let n = Int(readLine()!)!
var dict: [Int:String] = [:]

for _ in 0..<n {
	var input = readLine()!.split(separator: " ")
	let name = String(input[0])
	var day = String(input[1])
	var month = String(input[2])
	let year = String(input[3])

	if Int(day)! < 10 {
		day = "0"+day
	}
	if Int(month)! < 10 {
		month = "0"+month
	}
	
	var chk = year+month+day
	dict[Int(chk)!, default: ""] = name
}

print(dict[dict.keys.max()!]!)
print(dict[dict.keys.min()!]!)
