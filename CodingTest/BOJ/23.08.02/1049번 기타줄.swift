import Foundation

let NM = readLine()!.split(separator: " ").map {Int($0)!}
let N = NM[0]
let M = NM[1]

var minPackage = Int.max
var minPiece = Int.max

for _ in 0..<M {
	let input = readLine()!.split(separator: " ").map {Int($0)!}
	minPackage = min(minPackage, input[0])
	minPiece = min(minPiece, input[1])
}

if minPackage > minPiece * 6 {
	print(N * minPiece)
} else {
	var result = 0
	let tempPackage = N / 6
	let afterPackage = N % 6
	
	result += tempPackage * minPackage
	
	if afterPackage * minPiece > minPackage {
		result += minPackage
	} else {
		result += (afterPackage * minPiece)
	}
	
	print(result)
}
