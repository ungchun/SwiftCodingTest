import Foundation

func solution(_ number:[Int]) -> Int {
	
	var answer = 0
	for i in 0..<number.count {
		print("i \(i)")
		for j in i+1..<number.count {
			print("j \(j)")
			for k in j+1..<number.count {
				print("k \(k)")
				if number[i] + number[j] + number[k] == 0 { answer += 1 }
			}
		}
		print()
	}
	
	return answer
}
