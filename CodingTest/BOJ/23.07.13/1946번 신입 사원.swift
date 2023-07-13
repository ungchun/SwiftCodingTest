import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {
	let N = Int(readLine()!)!
	var scores: [(Int, Int)] = []
	var temp: Int = 0
	var result: Int = 1
	
	for _ in 0..<N {
		let input = readLine()!.split(separator: " ").map {Int(String($0))!}
		scores.append((input[0], input[1]))
	}
	scores.sort { $0.0 < $1.0 }
	temp = scores[0].1
	
	for i in 0..<scores.count {
		if temp > scores[i].1 {
			temp = scores[i].1
			result += 1
		}
	}
	print(result)
}
