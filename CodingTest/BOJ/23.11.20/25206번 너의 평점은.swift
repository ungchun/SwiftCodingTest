import Foundation

var gradeVal = 0.0
var myGrade = 0.0

for _ in 0..<20 {
	let input = readLine()!.split(separator: " ").map {String($0)}
	gradeVal += Double(input[1])!
	
	switch input[2] {
	case "A+":
		myGrade += (Double(input[1])! * 4.5)
		break
	case "A0":
		myGrade += (Double(input[1])! * 4.0)
		break
	case "B+":
		myGrade += (Double(input[1])! * 3.5)
		break
	case "B0":
		myGrade += (Double(input[1])! * 3.0)
		break
	case "C+":
		myGrade += (Double(input[1])! * 2.5)
		break
	case "C0":
		myGrade += (Double(input[1])! * 2.0)
		break
	case "D+":
		myGrade += (Double(input[1])! * 1.5)
		break
	case "D0":
		myGrade += (Double(input[1])! * 1.0)
		break
	case "F":
		myGrade += 0.0
		break
	default:
		gradeVal -= Double(input[1])!
		break
	}
}
print(String(format: "%.6f", myGrade / gradeVal))
