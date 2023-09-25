import Foundation

let NK = readLine()!.split(separator: " ").map {Int(String($0))!}
let N = NK[0]
let K = NK[1]

let HP = readLine()!
var arr = Array(HP)

//print(arr)

var cnt = 0
var hChk = false
var result = 0

for i in 0..<arr.count {
	if arr[i] == "P" {
		let min = i-K <= 0 ? 0 : i-K
		let max = i+K >= arr.count ? arr.count-1 : i+K
		var chk = false
		
		for j in min...i {
			if arr[j] == "H" {
				arr[j] = "C"
				result += 1
				chk = true
				break
			}
		}
		
		if !chk {
			for k in i...max {
				if arr[k] == "H" {
					arr[k] = "C"
					result += 1
					break
				}
			}
		}
		
//		print()
//		print(arr)
	}
}

print(result)
