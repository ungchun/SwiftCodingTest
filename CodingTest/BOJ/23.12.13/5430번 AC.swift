import Foundation

let t = Int(readLine()!)!

for _ in 0..<t {
	let acString = readLine()!
	let n = Int(readLine()!)!
	var arrString = readLine()!
	arrString.removeFirst()
	arrString.removeLast()
	let arr = arrString.split(separator: ",").map{Int(String($0))!}
	var isError = false
	
	if arr.isEmpty && !acString.contains("D") {
		print("[]")
	} else {
		var head = 0
		var tail = n-1
		var isReversed = false
		
		for value in acString {
			if value == "R" {
				isReversed.toggle()
			} else {
				if head > tail {
					isError = true
					break
				}
				if isReversed {
					tail -= 1
				} else {
					head += 1
				}
			}
		}
		
		if isError {
			print("error")
		} else if head > tail {
			print("[]")
		} else {
			if isReversed {
				var string = ""
				for value in Array(arr[head...tail]).reversed() {
					string += String(value)+","
				}
				string.removeLast()
				print("["+string+"]")
			} else {
				var string = ""
				for value in Array(arr[head...tail]) {
					string += String(value)+","
				}
				string.removeLast()
				print("["+string+"]")
			}
		}
	}
}
