import Foundation

let N = Int(readLine()!)!
var A = readLine()!.split(separator: " ").map {Int(String($0))!}
var B = readLine()!.split(separator: " ").map {Int(String($0))!}

var result = 0

A.sort(by: >)

while !B.isEmpty {
	if let index = B.firstIndex(where: {$0 == B.min()!}) {
		result += (A.removeFirst() * B.remove(at: index))
	}
}

print(result)
