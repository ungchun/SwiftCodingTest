import Foundation

func solution(_ answers:[Int]) -> [Int] {
	let stu1 = [1,2,3,4,5]
	let stu2 = [2,1,2,3,2,4,2,5]
	let stu3 = [3,3,1,1,2,2,4,4,5,5]
	var count = [0,0,0]
	var answer: Array<Int> = [Int]()
	for i in 0..<answers.count{
		let num1 = i % stu1.count
		let num2 = i % stu2.count
		let num3 = i % stu3.count
		
		if stu1[num1] == answers[i]{
			count[0] += 1
		}
		if stu2[num2] == answers[i]{
			count[1] += 1
		}
		if stu3[num3] == answers[i]{
			count[2] += 1
		}
	}
	
	let max = count.max()
	for i in 0..<count.count{
		if max == count[i]{
			answer.append(i+1)
		}
	}
	return answer
}
