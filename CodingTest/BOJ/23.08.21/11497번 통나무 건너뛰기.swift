import Foundation

var T = Int(readLine()!)!
while true {
	if T == 0 {
		break
	}
	
	var answer = 0
	let N = Int(readLine()!)!
	var arr = Array(repeating: 0, count: N)
	
	let l = readLine()!.split(separator: " ").map {Int(String($0))!}
	
	arr = l
	
	arr.sort(by: <)
	
	for i in 0..<N-2 {
		answer = max(arr[i+2] - arr[i], answer)
	}
	print(answer)
	
	T -= 1
}
