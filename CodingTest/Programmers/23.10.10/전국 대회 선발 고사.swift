import Foundation

func solution(_ rank: [Int], _ attendance: [Bool]) -> Int {
	var availableStudents: [Int:Int] = [:]

	for (index, isAttending) in attendance.enumerated() {
		if isAttending {
			availableStudents[index] = rank[index]
		}
	}
	
	let sortedVal = availableStudents.sorted { $0.value < $1.value}
	
	if sortedVal.count >= 3 {
		return 10000 * sortedVal[0].key + 100 * sortedVal[1].key + sortedVal[2].key
	} else {
		return 0
	}
}
