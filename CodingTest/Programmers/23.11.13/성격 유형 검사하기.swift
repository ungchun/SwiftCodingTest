import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
	var array: [[String:Int]] = [["R":0], ["T":0], ["C":0], ["F":0], ["J":0], ["M":0], ["A":0], ["N":0]]
	
	for i in 0..<survey.count {
		switch choices[i] {
		case 1:
			if let index = array.firstIndex(where: { String($0.keys.first!) == String(survey[i].first!)}) {
				array[index][String(survey[i].first!)]! += 3
			}
			break
		case 2:
			if let index = array.firstIndex(where: { String($0.keys.first!) == String(survey[i].first!)}) {
				array[index][String(survey[i].first!)]! += 2
			}
			break
		case 3:
			if let index = array.firstIndex(where: { String($0.keys.first!) == String(survey[i].first!)}) {
				array[index][String(survey[i].first!)]! += 1
			}
			break
		case 4:
			break
		case 5:
			if let index = array.firstIndex(where: { String($0.keys.first!) == String(survey[i].last!)}) {
				array[index][String(survey[i].last!)]! += 1
			}
			break
		case 6:
			if let index = array.firstIndex(where: { String($0.keys.first!) == String(survey[i].last!)}) {
				array[index][String(survey[i].last!)]! += 2
			}
			break
		case 7:
			if let index = array.firstIndex(where: { String($0.keys.first!) == String(survey[i].last!)}) {
				array[index][String(survey[i].last!)]! += 3
			}
			break
		default:
			break
		}
	}
	
//	print(array)
	var result = ""
	for i in stride(from: 1, through: array.count, by: 2) {
		if array[i].values.first! == array[i-1].values.first! {
			result += array[i-1].keys.first!
		} else {
			if array[i].values.first! > array[i-1].values.first! {
				result += array[i].keys.first!
			} else {
				result += array[i-1].keys.first!
			}
		}
	}
	return result
}
